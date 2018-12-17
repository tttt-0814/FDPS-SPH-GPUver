ftype=data/two_body/r003k/r_p_1.0R/two_body.00_t000

frst=0
ffle=0

odir=snap
fexe=run

export OMP_NUM_THREADS=4
#export OMP_NUM_THREADS=1

if ! test -e $odir
then
    mkdir $odir
fi

cp $0 $odir/job.sh
cp Makefile $odir/
cp run $odir/
cp $ftype.head $odir/

./"$fexe" "$frst" "$ffle" "$ftype"
