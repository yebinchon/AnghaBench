
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read8_at (int *,int) ;
 int r_buf_read_at (int *,int,int *,int) ;

__attribute__((used)) static int check_pe64_buf(RBuffer *buf, ut64 length) {
 int idx, ret = 0;
 if (!buf || length <= 0x3d) {
  return 0;
 }
 idx = r_buf_read8_at (buf, 0x3c) | (r_buf_read8_at (buf, 0x3d)<<8);
 if (length >= idx + 0x20) {
  ut8 tmp1[2], tmp2[2], tmp3[2];
  r_buf_read_at (buf, 0, tmp1, 2);
  r_buf_read_at (buf, idx, tmp2, 2);
  r_buf_read_at (buf, idx + 0x18, tmp3, 2);
  if (!memcmp (tmp1, "MZ", 2) && !memcmp (tmp2, "PE", 2) && !memcmp (tmp3, "\x0b\x02", 2)) {
   ret = 1;
  }
 }
 return ret;
}
