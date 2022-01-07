
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int ut16 ;
typedef int st16 ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int,int *,int) ;
 int r_buf_read_le16_at (int *,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool checkEntrypointBuffer(RBuffer *b) {
 st16 cs = r_buf_read_le16_at (b, 0x16);
 ut16 ip = r_buf_read_le16_at (b, 0x14);
 ut32 pa = ((r_buf_read_le16_at (b, 0x08) + cs) << 4) + ip;






 pa &= 0xffff;
 ut64 length = r_buf_size (b);
 if (pa >= 0x20 && pa + 1 < length) {
  ut16 pe = r_buf_read_le16_at (b, 0x3c);
  if (pe + 2 < length && length > 0x104) {
   ut8 h[2];
   if (r_buf_read_at (b, pe, h, 2) == 2) {
    if (!memcmp (h, "PE", 2)) {
     return 0;
    }
   }
  }
  return 1;
 }
 return 0;
}
