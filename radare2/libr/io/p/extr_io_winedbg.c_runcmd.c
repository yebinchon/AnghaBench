
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int buf ;


 int free (char*) ;
 int gs ;
 int memset (char*,int ,int) ;
 int r_socket_block_time (int ,int,int,int ) ;
 int r_socket_printf (int ,char*,char const*) ;
 int r_socket_read (int ,int *,int) ;
 char* r_str_append (char*,char*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *runcmd (const char *cmd) {
 char buf[4096] = {0};
 if (cmd) {
  r_socket_printf (gs, "%s\n", cmd);
 }
 int timeout = 1000000;
 char *str = ((void*)0);
 r_socket_block_time (gs, 1, timeout, 0);
 while (1) {
  memset (buf, 0, sizeof (buf));
  r_socket_read (gs, (ut8*)buf, sizeof (buf) - 1);
  char *promptFound = strstr (buf, "Wine-dbg>");
  if (promptFound) {
   *promptFound = 0;
   return r_str_append (str, buf);
  }
  str = r_str_append (str, buf);
 }
 free (str);
 return ((void*)0);
}
