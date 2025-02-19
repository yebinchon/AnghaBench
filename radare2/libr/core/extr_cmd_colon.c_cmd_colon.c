
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eprintf (char*) ;
 int free (char*) ;
 int r_cons_printf (char*,char*) ;
 char* r_str_ndup (char const*,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int cmd_colon(void *_core, const char *cmd) {

 if (*cmd == '{') {

  return 1;
 }
 if (!*cmd) {
  return 1;
 }
 if (*cmd == '?') {
  eprintf ("Usage: :<command> <arguments\n");
  eprintf ("Usage: :{json-goes-here}\n");
  eprintf ("See: T command to save/replay/. long commands\n");
  eprintf ("See: e http.colon=true\n");
  return 1;
 }
 const char *space = strchr (cmd, ' ');
 if (space) {
  int len = space - cmd;
  char *action = r_str_ndup (cmd, len);
  r_cons_printf ("-> %s\n", action);
  free (action);
  return 1;
 }
 eprintf ("Invalid command\n");

 return 0;
}
