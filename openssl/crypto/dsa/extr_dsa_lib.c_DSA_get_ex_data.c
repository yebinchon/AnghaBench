
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ex_data; } ;
typedef TYPE_1__ DSA ;


 void* CRYPTO_get_ex_data (int *,int) ;

void *DSA_get_ex_data(DSA *d, int idx)
{
    return CRYPTO_get_ex_data(&d->ex_data, idx);
}
