
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef scalar_t__ ut16 ;
typedef int buf ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,scalar_t__,int *,int) ;
 scalar_t__ r_buf_read_le16_at (int *,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut64 length = r_buf_size (b);
 if (length <= 0x3d) {
  return 0;
 }
 ut16 idx = r_buf_read_le16_at (b, 0x3c);
 if ((ut64)idx + 26 < length) {
  ut8 buf[2];
  r_buf_read_at (b, 0, buf, sizeof (buf));
  if (!memcmp (buf, "MZ", 2)) {
   r_buf_read_at (b, idx, buf, sizeof (buf));
   if (!memcmp (buf, "NE", 2)) {
    return 1;
   }
  }
 }
 return 0;
}
