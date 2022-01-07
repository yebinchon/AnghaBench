
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int litDistribTable ;
typedef unsigned long long U64 ;
typedef int BYTE ;


 unsigned long long RDG_BLOCKSIZE ;
 int RDG_DICTSIZE ;
 int RDG_fillLiteralDistrib (int ,double) ;
 int RDG_genBlock (int *,int,int,double,int ,unsigned int*) ;
 int SET_BINARY_MODE (int ) ;
 int fwrite (int *,int,size_t,int ) ;
 int memcpy (int *,int *,int) ;
 int stdout ;

void RDG_genOut(unsigned long long size, double matchProba, double litProba, unsigned seed)
{
    BYTE buff[RDG_DICTSIZE + RDG_BLOCKSIZE];
    U64 total = 0;
    size_t genBlockSize = RDG_BLOCKSIZE;
    litDistribTable lt;


    if (litProba==0.0) litProba = matchProba / 4.5;
    RDG_fillLiteralDistrib(lt, litProba);
    SET_BINARY_MODE(stdout);


    RDG_genBlock(buff, RDG_DICTSIZE, 0, matchProba, lt, &seed);


    while (total < size) {
        RDG_genBlock(buff, RDG_DICTSIZE+RDG_BLOCKSIZE, RDG_DICTSIZE, matchProba, lt, &seed);
        if (size-total < RDG_BLOCKSIZE) genBlockSize = (size_t)(size-total);
        total += genBlockSize;
        fwrite(buff, 1, genBlockSize, stdout);

        memcpy(buff, buff + RDG_BLOCKSIZE, RDG_DICTSIZE);
    }
}
