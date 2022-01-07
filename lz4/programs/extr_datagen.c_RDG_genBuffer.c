
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int litDistribTable ;


 int RDG_fillLiteralDistrib (int ,double) ;
 int RDG_genBlock (void*,size_t,int ,double,int ,unsigned int*) ;

void RDG_genBuffer(void* buffer, size_t size, double matchProba, double litProba, unsigned seed)
{
    litDistribTable lt;
    if (litProba==0.0) litProba = matchProba / 4.5;
    RDG_fillLiteralDistrib(lt, litProba);
    RDG_genBlock(buffer, size, 0, matchProba, lt, &seed);
}
