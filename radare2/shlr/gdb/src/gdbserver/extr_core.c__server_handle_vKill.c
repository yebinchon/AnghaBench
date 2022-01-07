
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;
typedef int gdbr_server_cmd_cb ;


 scalar_t__ send_ack (int *) ;
 int send_msg (int *,char*) ;

__attribute__((used)) static int _server_handle_vKill(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
 if (send_ack (g) < 0) {
  return -1;
 }

 send_msg (g, "OK");
 return -1;
}
