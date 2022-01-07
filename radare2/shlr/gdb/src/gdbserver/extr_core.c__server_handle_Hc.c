
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data_len; int * data; } ;
typedef TYPE_1__ libgdbr_t ;
typedef scalar_t__ (* gdbr_server_cmd_cb ) (TYPE_1__*,void*,char*,int *,int ) ;
typedef int cmd ;


 scalar_t__ isalpha (int ) ;
 scalar_t__ send_ack (TYPE_1__*) ;
 int send_msg (TYPE_1__*,char*) ;
 int snprintf (char*,int,char*,int) ;
 int sscanf (int *,char*,int*) ;
 int strncmp (int *,char*,int) ;

__attribute__((used)) static int _server_handle_Hc(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {

 char cmd[32];
 int tid;
 if (send_ack (g) < 0) {
  return -1;
 }
 if (g->data_len <= 2 || isalpha (g->data[2])) {
  return send_msg (g, "E01");
 }

 if (g->data[2] == '0' || !strncmp (g->data + 2, "-1", 2)) {
  return send_msg (g, "OK");
 }
 sscanf (g->data + 2, "%x", &tid);
 snprintf (cmd, sizeof (cmd) - 1, "dpt=%d", tid);

 if (cmd_cb (g, core_ptr, cmd, ((void*)0), 0) < 0) {
  send_msg (g, "E01");
  return -1;
 }
 return send_msg (g, "OK");
}
