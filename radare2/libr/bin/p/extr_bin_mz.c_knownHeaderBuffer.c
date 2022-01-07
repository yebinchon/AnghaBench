
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef scalar_t__ ut16 ;
typedef int h ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,scalar_t__,int *,int) ;
 scalar_t__ r_buf_size (int *) ;

__attribute__((used)) static bool knownHeaderBuffer(RBuffer *b, ut16 offset) {
 ut8 h[2];
 if (r_buf_read_at (b, offset, h, sizeof (h)) != sizeof (h)) {
  return 0;
 }
 if (!memcmp (h, "PE", 2)) {
  if (offset + 0x20 < r_buf_size (b)) {
   if (r_buf_read_at (b, offset + 0x18, h, sizeof (h)) != 2) {
    return 0;
   }
   if (!memcmp (h, "\x0b\x01", 2)) {
    return 1;
   }
  }
 } else {
  if (!memcmp (h, "NE", 2)
   || !memcmp (h, "LE", 2)
   || !memcmp (h, "LX", 2)
   || !memcmp (h, "PL", 2)) {
   return 1;
  }
 }
 return 0;
}
