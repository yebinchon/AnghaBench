
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int x_cs_info_level ;
 unsigned int x_cs_verbose_level ;

void
set_check_status(unsigned int info_level, unsigned int verbose_level)
{
    x_cs_info_level = info_level;
    x_cs_verbose_level = verbose_level;
}
