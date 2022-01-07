
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int RBuffer ;


 int buf_eof ;
 int buf_err ;
 int r_buf_read (int *,int *,int) ;

__attribute__((used)) static ut8 read_byte(RBuffer *b) {
 ut8 r = 0;
 int length;

 if (buf_eof || buf_err) {
  return 0;
 }
 if ((length = r_buf_read (b, &r, 1)) != 1) {
  if (length == -1) {
   buf_err = 1;
  }
  if (length == 0) {
   buf_eof = 1;
  }
  return 0;
 }
 return r;
}
