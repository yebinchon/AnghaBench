
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;
typedef scalar_t__ (* gdbr_server_cmd_cb ) (int *,void*,char*,char*,int) ;
typedef int buf ;


 scalar_t__ send_ack (int *) ;
 int send_msg (int *,char*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int _server_handle_qOffsets(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
 char buf[64], *ptr;
 ptr = buf + sprintf (buf, "TextSeg=");
 if (send_ack (g) < 0) {
  return -1;
 }
 if (cmd_cb (g, core_ptr, "dm", ptr, sizeof (buf) - (ptr - buf) - 1) < 0) {
  send_msg (g, "");
  return -1;
 }
 return send_msg (g, buf);
}
