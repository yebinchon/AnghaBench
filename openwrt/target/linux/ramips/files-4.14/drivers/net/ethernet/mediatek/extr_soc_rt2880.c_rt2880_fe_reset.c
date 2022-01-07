
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RT2880_RESET_FE ;
 int fe_reset (int ) ;

void rt2880_fe_reset(void)
{
 fe_reset(RT2880_RESET_FE);
}
