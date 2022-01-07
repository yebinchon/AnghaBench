
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ex_data; } ;
typedef TYPE_1__ ENGINE ;


 int CRYPTO_set_ex_data (int *,int,void*) ;

int ENGINE_set_ex_data(ENGINE *e, int idx, void *arg)
{
    return CRYPTO_set_ex_data(&e->ex_data, idx, arg);
}
