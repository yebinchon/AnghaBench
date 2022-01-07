
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int message ;
struct TYPE_9__ {TYPE_1__* registers; int * data; } ;
typedef TYPE_2__ libgdbr_t ;
typedef scalar_t__ (* gdbr_server_cmd_cb ) (TYPE_2__*,void*,char*,char*,int) ;
typedef int cmd ;
struct TYPE_8__ {char* name; } ;


 int isxdigit (int ) ;
 scalar_t__ send_ack (TYPE_2__*) ;
 int send_msg (TYPE_2__*,char*) ;
 scalar_t__ snprintf (char*,int,char*,char*) ;
 int strtol (int *,int *,int) ;

__attribute__((used)) static int _server_handle_p(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
 char message[128] = { 0 }, cmd[128] = { 0 };
 int regnum, i;
 if (send_ack (g) < 0) {
  return -1;
 }
 if (!isxdigit (g->data[1])) {
  return send_msg (g, "E01");
 }
 regnum = strtol (g->data + 1, ((void*)0), 16);

 for (i = 0; i < regnum; i++) {
  if (!*g->registers[i].name) {
   return send_msg (g, "E01");
  }
 }
 if (snprintf (cmd, sizeof (cmd) - 1, "dr %s", g->registers[regnum].name) < 0) {
  send_msg (g, "E01");
  return -1;
 }
 if (cmd_cb (g, core_ptr, cmd, message, sizeof (message)) < 0) {
  send_msg (g, "E01");
  return -1;
 }
 return send_msg (g, message);
}
