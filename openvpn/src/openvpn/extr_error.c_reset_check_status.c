
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ x_cs_info_level ;
 scalar_t__ x_cs_verbose_level ;

void
reset_check_status(void)
{
    x_cs_info_level = 0;
    x_cs_verbose_level = 0;
}
