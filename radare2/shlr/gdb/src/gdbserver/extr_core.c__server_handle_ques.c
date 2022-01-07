
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;
typedef int libgdbr_t ;
typedef scalar_t__ (* gdbr_server_cmd_cb ) (int *,void*,char*,char*,int) ;


 scalar_t__ send_ack (int *) ;
 int send_msg (int *,char*) ;

__attribute__((used)) static int _server_handle_ques(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
 char message[64] = { 0 };
 if (send_ack (g) < 0) {
  return -1;
 }
 if (cmd_cb (g, core_ptr, "?", message, sizeof (message)) < 0) {
  send_msg (g, "");
  return -1;
 }
 return send_msg (g, message);
}
