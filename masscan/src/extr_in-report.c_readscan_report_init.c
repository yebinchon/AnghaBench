
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * global_xnames ;
 int xname_init () ;

void
readscan_report_init(void)
{
    if (global_xnames == ((void*)0))
        xname_init();
}
