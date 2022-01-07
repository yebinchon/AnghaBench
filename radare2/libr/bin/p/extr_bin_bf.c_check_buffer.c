
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int tmp ;
typedef int RBuffer ;


 int r_buf_read_at (int *,int ,int*,int) ;
 int r_return_val_if_fail (int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *buf) {
 r_return_val_if_fail (buf, 0);

 ut8 tmp[16];
 int read_length = r_buf_read_at (buf, 0, tmp, sizeof (tmp));
 if (read_length <= 0) {
  return 0;
 }

 const ut8 *p = (const ut8 *)tmp;
 int i;
 for (i = 0; i < read_length; i++) {
  switch (p[i]) {
  case '+':
  case '-':
  case '>':
  case '<':
  case '[':
  case ']':
  case ',':
  case '.':
  case ' ':
  case '\n':
  case '\r':
   break;
  default:
   return 0;
  }
 }
 return 1;
}
