
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ex_data; } ;
typedef TYPE_1__ DH ;


 void* CRYPTO_get_ex_data (int *,int) ;

void *DH_get_ex_data(DH *d, int idx)
{
    return CRYPTO_get_ex_data(&d->ex_data, idx);
}
