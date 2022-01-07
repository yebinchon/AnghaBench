
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ex_data; } ;
typedef TYPE_1__ UI_METHOD ;


 int CRYPTO_set_ex_data (int *,int,void*) ;

int UI_method_set_ex_data(UI_METHOD *method, int idx, void *data)
{
    return CRYPTO_set_ex_data(&method->ex_data, idx, data);
}
