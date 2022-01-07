
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBuffer ;


 int R_BUF_SET ;
 int r_buf_read8 (int *) ;
 int r_buf_seek (int *,int ,int ) ;
 int r_buf_size (int *) ;
 int r_cons_printf (char*,...) ;

__attribute__((used)) static void consumeBuffer(RBuffer *buf, const char *cmd, const char *errmsg) {
 if (!buf) {
  if (errmsg) {
   r_cons_printf ("%s\n", errmsg);
  }
  return;
 }
 if (cmd) {
  r_cons_printf ("%s", cmd);
 }
 int i;
 r_buf_seek (buf, 0, R_BUF_SET);
 for (i = 0; i < r_buf_size (buf); i++) {
  r_cons_printf ("%02x", r_buf_read8 (buf));
 }
 r_cons_printf ("\n");
}
