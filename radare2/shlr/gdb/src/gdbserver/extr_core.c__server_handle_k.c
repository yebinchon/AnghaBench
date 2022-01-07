
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;
typedef int gdbr_server_cmd_cb ;


 int send_ack (int *) ;

__attribute__((used)) static int _server_handle_k(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
 send_ack (g);
 return -1;
}
