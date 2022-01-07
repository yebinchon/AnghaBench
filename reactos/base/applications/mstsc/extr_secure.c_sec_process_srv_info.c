
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int STREAM ;


 int DEBUG_RDP5 (char*) ;
 int RDP_V4 ;
 int g_rdp_version ;
 int g_server_depth ;
 int g_server_rdp_version ;
 int in_uint16_le (int ,int) ;

__attribute__((used)) static void
sec_process_srv_info(STREAM s)
{
 in_uint16_le(s, g_server_rdp_version);
 DEBUG_RDP5(("Server RDP version is %d\n", g_server_rdp_version));
 if (1 == g_server_rdp_version)
 {
  g_rdp_version = RDP_V4;
  g_server_depth = 8;
 }
}
