
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* data; size_t data_len; } ;
typedef TYPE_1__ libgdbr_t ;
typedef int (* gdbr_server_cmd_cb ) (TYPE_1__*,void*,char*,int *,int ) ;


 int eprintf (char*,char*) ;
 scalar_t__ send_ack (TYPE_1__*) ;
 int send_msg (TYPE_1__*,char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int _server_handle_vCont(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
 char *action = ((void*)0);
 if (send_ack (g) < 0) {
  return -1;
 }
 g->data[g->data_len] = '\0';
 if (g->data[5] == '?') {

  return send_msg (g, "vCont;c;s");
 }
 if (!(action = strtok (g->data, ";"))) {
  return send_msg (g, "E01");
 }
 while ((action = strtok (((void*)0), ";"))) {
  eprintf ("action: %s\n", action);
  switch (action[0]) {
  case 's':

   if (cmd_cb (g, core_ptr, "ds", ((void*)0), 0) < 0) {
    send_msg (g, "E01");
    return -1;
   }
   return send_msg (g, "OK");
  case 'c':

   if (cmd_cb (g, core_ptr, "dc", ((void*)0), 0) < 0) {
    send_msg (g, "E01");
    return -1;
   }
   return send_msg (g, "OK");
  default:

   return send_msg (g, "E01");
  }
 }
 return -1;
}
