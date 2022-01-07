
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {unsigned int size2; unsigned int* unimat; } ;
typedef unsigned int index_t ;


 unsigned int getmin (struct ctx*) ;
 int setbit (struct ctx*,unsigned int) ;

__attribute__((used)) static void makeuniform(struct ctx *k)
{
    unsigned int size2 = k->size2;
    for (index_t c = 0; c < size2; c++) {
        index_t r = getmin(k);
        setbit(k, r);
        k->unimat[r] = c;
    }
}
