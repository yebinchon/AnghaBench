
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBuffer ;


 int check_buffer_jmp (int *) ;
 int check_buffer_rjmp (int *) ;
 int r_buf_size (int *) ;
 int rjmp (int *,int ) ;

__attribute__((used)) static bool check_buffer(RBuffer *buf) {
 if (r_buf_size (buf) < 32) {
  return 0;
 }
 if (!rjmp (buf, 0)) {
  return check_buffer_jmp (buf);
 }
 return check_buffer_rjmp (buf);
}
