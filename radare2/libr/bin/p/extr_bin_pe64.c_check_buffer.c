
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut16 ;
typedef int buf ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int,int *,int) ;
 int r_buf_read_le16_at (int *,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut64 length = r_buf_size (b);
 if (length <= 0x3d) {
  return 0;
 }
 ut16 idx = r_buf_read_le16_at (b, 0x3c);
 if (idx + 26 < length) {



  ut8 buf[2];
  r_buf_read_at (b, 0, buf, sizeof (buf));
  if (!memcmp (buf, "MZ", 2)) {
   r_buf_read_at (b, idx, buf, sizeof (buf));


   if (!memcmp (buf, "PE", 2)) {
    r_buf_read_at (b, idx + 0x18, buf, sizeof (buf));
    return !memcmp (buf, "\x0b\x02", 2);
   }
  }
 }
 return 0;
}
