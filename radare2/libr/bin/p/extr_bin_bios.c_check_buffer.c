
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut32 ;
typedef int tmp ;
typedef int RBuffer ;


 int memcmp (int*,char*,int) ;
 int r_buf_read8_at (int *,int const) ;
 int r_buf_read_at (int *,int ,int*,int) ;
 int r_buf_size (int *) ;
 int r_return_val_if_fail (int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *buf) {
 r_return_val_if_fail (buf, 0);

 ut64 sz = r_buf_size (buf);
 if (sz <= 0xffff) {
  return 0;
 }

 ut8 b0 = r_buf_read8_at (buf, 0);
 if (b0 == 0xcf || b0 == 0x7f) {
  return 0;
 }

 const ut32 ep = sz - 0x10000 + 0xfff0;


 ut8 tmp[3];
 int r = r_buf_read_at (buf, 0, tmp, sizeof (tmp));
 if (r <= 0 || !memcmp (tmp, "dex", 3) || !memcmp (tmp, "MZ", 2)) {
  return 0;
 }


 ut8 bep = r_buf_read8_at (buf, ep);
 return bep == 0xea || bep == 0xe9;
}
