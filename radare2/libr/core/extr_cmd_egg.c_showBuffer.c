
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBuffer ;


 int R_BUF_SET ;
 int r_buf_read8 (int *) ;
 int r_buf_seek (int *,int ,int ) ;
 int r_buf_size (int *) ;
 int r_cons_newline () ;
 int r_cons_printf (char*,int ) ;

__attribute__((used)) static void showBuffer(RBuffer *b) {
 int i;
 if (b && r_buf_size (b) > 0) {
  r_buf_seek (b, 0, R_BUF_SET);
  for (i = 0; i < r_buf_size (b); i++) {
   r_cons_printf ("%02x", r_buf_read8 (b));
  }
  r_cons_newline ();
 }
}
