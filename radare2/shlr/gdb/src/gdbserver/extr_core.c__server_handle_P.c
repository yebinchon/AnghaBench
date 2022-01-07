
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char* data; TYPE_1__* registers; } ;
typedef TYPE_2__ libgdbr_t ;
typedef scalar_t__ (* gdbr_server_cmd_cb ) (TYPE_2__*,void*,char*,int *,int ) ;
struct TYPE_8__ {char* name; } ;


 char* calloc (int,int) ;
 int free (char*) ;
 int isxdigit (char) ;
 scalar_t__ send_ack (TYPE_2__*) ;
 int send_msg (TYPE_2__*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int strtol (char*,int *,int) ;

__attribute__((used)) static int _server_handle_P(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
 char *ptr, *cmd;
 int regnum, len, i;
 if (send_ack (g) < 0) {
  return -1;
 }
 if (!isxdigit (g->data[1]) || !(ptr = strchr (g->data, '='))) {
  return send_msg (g, "E01");
 }
 ptr++;
 if (!isxdigit (*ptr)) {
  return send_msg (g, "E01");
 }
 regnum = strtol (g->data + 1, ((void*)0), 16);

 for (i = 0; i < regnum; i++) {
  if (!*g->registers[i].name) {
   return send_msg (g, "E01");
  }
 }
 len = strlen (g->registers[regnum].name) + strlen (ptr) + 10;
 if (!(cmd = calloc (len, sizeof (char)))) {
  return send_msg (g, "E01");
 }
 snprintf (cmd, len - 1, "dr %s=0x%s", g->registers[regnum].name, ptr);
 if (cmd_cb (g, core_ptr, cmd, ((void*)0), 0) < 0) {
  free (cmd);
  send_msg (g, "E01");
  return -1;
 }
 free (cmd);
 return send_msg (g, "OK");
}
