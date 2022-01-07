
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;
typedef int (* gdbr_server_cmd_cb ) (int *,void*,char*,char*,size_t) ;


 int free (char*) ;
 char* malloc (size_t) ;
 int send_ack (int *) ;
 int send_msg (int *,char*) ;

__attribute__((used)) static int _server_handle_qC(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
 char *buf;
 int ret;
 size_t buf_len = 80;
 if ((ret = send_ack (g)) < 0) {
  return -1;
 }
 if (!(buf = malloc (buf_len))) {
  return -1;
 }
 if ((ret = cmd_cb (g, core_ptr, "dp", buf, buf_len)) < 0) {
  free (buf);
  return -1;
 }
 ret = send_msg (g, buf);
 free (buf);
 return ret;
}
