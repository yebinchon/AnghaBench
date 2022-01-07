
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* app_data; } ;
typedef TYPE_1__ DH_METHOD ;



int DH_meth_set0_app_data(DH_METHOD *dhm, void *app_data)
{
    dhm->app_data = app_data;
    return 1;
}
