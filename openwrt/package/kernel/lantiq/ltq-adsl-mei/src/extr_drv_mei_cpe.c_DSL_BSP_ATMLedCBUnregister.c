
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int adsl_dummy_ledcallback ;
 int g_adsl_ledcallback ;

int
DSL_BSP_ATMLedCBUnregister (int (*ifx_adsl_ledcallback) (void))
{
    g_adsl_ledcallback = adsl_dummy_ledcallback;
    return 0;
}
