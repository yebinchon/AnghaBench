
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;
typedef int (* gdbr_server_cmd_cb ) (int *,void*,char*,char*,int) ;


 int free (char*) ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;
 scalar_t__ send_ack (int *) ;
 int send_msg (int *,char*) ;

__attribute__((used)) static int _server_handle_g(libgdbr_t *g, gdbr_server_cmd_cb cmd_cb, void *core_ptr) {
 char *buf;

 int buf_len = 4096;
 int ret;
 if (send_ack (g) < 0) {
  return -1;
 }
 if (!(buf = malloc (buf_len))) {
  send_msg (g, "E01");
  return -1;
 }
 memset (buf, 0, buf_len);
 if ((buf_len = cmd_cb (g, core_ptr, "dr", buf, buf_len)) < 0) {
  free (buf);
  send_msg (g, "E01");
  return -1;
 }
 ret = send_msg (g, buf);
 free (buf);
 return ret;
}
