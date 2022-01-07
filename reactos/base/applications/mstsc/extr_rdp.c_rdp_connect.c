
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int RD_BOOL ;


 int False ;
 int True ;
 scalar_t__ g_network_error ;
 int g_rdp_shareid ;
 scalar_t__ g_redirect ;
 int g_username ;
 int rdp_loop (int *,int *) ;
 int rdp_send_logon_info (int ,char*,int ,char*,char*,char*) ;
 int sec_connect (char*,int ,char*,char*,int ) ;

RD_BOOL
rdp_connect(char *server, uint32 flags, char *domain, char *password,
     char *command, char *directory, RD_BOOL reconnect)
{
 RD_BOOL deactivated = False;
 uint32 ext_disc_reason = 0;

 if (!sec_connect(server, g_username, domain, password, reconnect))
  return False;

 rdp_send_logon_info(flags, domain, g_username, password, command, directory);


 while (!g_rdp_shareid)
 {
  if (g_network_error)
   return False;

  if (!rdp_loop(&deactivated, &ext_disc_reason))
   return False;

  if (g_redirect)
   return True;
 }
 return True;
}
