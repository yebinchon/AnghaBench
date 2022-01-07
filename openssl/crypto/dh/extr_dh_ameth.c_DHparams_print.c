
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DH ;
typedef int BIO ;


 int do_dh_print (int *,int const*,int,int ) ;

int DHparams_print(BIO *bp, const DH *x)
{
    return do_dh_print(bp, x, 4, 0);
}
