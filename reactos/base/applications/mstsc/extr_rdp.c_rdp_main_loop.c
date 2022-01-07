
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int RD_BOOL ;


 scalar_t__ g_pending_resize ;
 scalar_t__ g_redirect ;
 scalar_t__ rdp_loop (int *,int *) ;

void
rdp_main_loop(RD_BOOL * deactivated, uint32 * ext_disc_reason)
{
 while (rdp_loop(deactivated, ext_disc_reason))
 {
  if (g_pending_resize || g_redirect)
  {
   return;
  }
 }
}
