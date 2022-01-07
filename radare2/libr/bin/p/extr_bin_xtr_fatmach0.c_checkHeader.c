
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int RBuffer ;


 int memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int,int *,int) ;
 int r_buf_read_be32_at (int *,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool checkHeader(RBuffer *b) {
 ut8 buf[4];
 const ut64 sz = r_buf_size (b);
 r_buf_read_at (b, 0, buf, 4);
 if (sz >= 0x300 && !memcmp (buf, "\xca\xfe\xba\xbe", 4)) {
  ut64 addr = 4 * sizeof (32);
  ut64 off = r_buf_read_be32_at (b, addr);
  if (off > 0 && off + 4 < sz) {
   ut64 h = 0;
   r_buf_read_at (b, h + off, buf, 4);
   if (!memcmp (buf, "\xce\xfa\xed\xfe", 4) ||
    !memcmp (buf, "\xfe\xed\xfa\xce", 4) ||
    !memcmp (buf, "\xfe\xed\xfa\xcf", 4) ||
    !memcmp (buf, "\xcf\xfa\xed\xfe", 4)) {
    return 1;
   }
  }
 }
 return 0;
}
