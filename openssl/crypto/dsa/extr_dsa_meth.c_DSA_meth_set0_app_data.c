
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* app_data; } ;
typedef TYPE_1__ DSA_METHOD ;



int DSA_meth_set0_app_data(DSA_METHOD *dsam, void *app_data)
{
    dsam->app_data = app_data;
    return 1;
}
