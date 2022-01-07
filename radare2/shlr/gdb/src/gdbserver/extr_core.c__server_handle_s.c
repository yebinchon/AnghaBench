
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int message ;
struct TYPE_7__ {int data_len; } ;
typedef TYPE_1__ libgdbr_t ;
typedef scalar_t__ (* gdbr_server_cmd_cb ) (TYPE_1__*,void*,char*,char*,int) ;


 scalar_t__ send_ack (TYPE_1__*) ;
 int send_msg (TYPE_1__*,char*) ;

__attribute__((used)) static int _server_handle_s(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
 char message[64];
 if (send_ack (g) < 0) {
  return -1;
 }
 if (g->data_len > 1) {

  return send_msg (g, "E01");
 }
 if (cmd_cb (g, core_ptr, "ds", ((void*)0), 0) < 0) {
  send_msg (g, "E01");
  return -1;
 }
 if (cmd_cb (g, core_ptr, "?", message, sizeof (message)) < 0) {
  send_msg (g, "");
  return -1;
 }
 return send_msg (g, message);
}
