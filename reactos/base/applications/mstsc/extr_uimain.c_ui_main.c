
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;


 int FALSE ;
 int RDP_INFO_AUTOLOGON ;
 int RDP_LOGON_NORMAL ;
 int bs_init (int ,int ,int ) ;
 int g_directory ;
 int g_domain ;
 int g_height ;
 scalar_t__* g_password ;
 int g_server_depth ;
 int g_servername ;
 int g_shell ;
 int g_width ;
 int mi_create_window () ;
 int mi_main_loop () ;
 int rdp_connect (int ,int ,int ,scalar_t__*,int ,int ,int ) ;

int
ui_main(void)
{
  uint32 flags;


  flags = RDP_LOGON_NORMAL;
  if (g_password[0] != 0)
  {
    flags |= RDP_INFO_AUTOLOGON;
  }
  if (!rdp_connect(g_servername, flags, g_domain, g_password,
                   g_shell, g_directory, FALSE))
  {
    return 0;
  }

  bs_init(g_width, g_height, g_server_depth);

  if (!mi_create_window())
  {
    return 0;
  }

  return mi_main_loop();
}
