
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ex_data; } ;
typedef TYPE_1__ UI_METHOD ;


 void const* CRYPTO_get_ex_data (int *,int) ;

const void *UI_method_get_ex_data(const UI_METHOD *method, int idx)
{
    return CRYPTO_get_ex_data(&method->ex_data, idx);
}
