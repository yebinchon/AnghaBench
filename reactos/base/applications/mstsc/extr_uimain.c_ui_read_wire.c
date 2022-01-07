
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_deactivated ;
 int g_ext_disc_reason ;
 int rdp_loop (int *,int *) ;

int
ui_read_wire(void)
{
  return rdp_loop(&g_deactivated, &g_ext_disc_reason);
}
