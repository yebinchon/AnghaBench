
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut16 ;
typedef int RBuffer ;


 int checkEntrypointBuffer (int *) ;
 scalar_t__ knownHeaderBuffer (int *,int) ;
 scalar_t__ memcmp (int *,char*,int) ;
 int r_buf_read_at (int *,int ,int *,int) ;
 int r_buf_read_le16_at (int *,int) ;
 int r_buf_size (int *) ;
 int r_return_val_if_fail (int *,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 r_return_val_if_fail (b, 0);
 ut64 b_size = r_buf_size (b);
 if (b_size <= 0x3d) {
  return 0;
 }


 ut8 h[2];
 if (r_buf_read_at (b, 0, h, 2) != 2) {
  return 0;
 }
 if (memcmp (h, "MZ", 2)) {
  return 0;
 }


 ut16 new_exe_header_offset = r_buf_read_le16_at (b, 0x3c);
 if (b_size > new_exe_header_offset + 2) {
  if (knownHeaderBuffer (b, new_exe_header_offset)) {
   return 0;
  }
 }


 if (!checkEntrypointBuffer (b)) {
  return 0;
 }
 return 1;
}
