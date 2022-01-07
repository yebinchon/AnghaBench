
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut64 ;
typedef int ut16 ;
typedef int buf ;
typedef int RBuffer ;


 int r_bin_checksum_omf_ok (int const*,int) ;
 int* r_buf_data (int *,int *) ;
 int r_buf_read_at (int *,int,int*,int) ;
 int r_buf_read_le16_at (int *,int) ;
 int r_buf_size (int *) ;
 int r_return_val_if_fail (int const*,int) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 int i;
 ut8 ch;
 if (r_buf_read_at (b, 0, &ch, 1) != 1) {
  return 0;
 }
 if (ch != 0x80 && ch != 0x82) {
  return 0;
 }
 ut16 rec_size = r_buf_read_le16_at (b, 1);
 ut8 str_size; (void)r_buf_read_at (b, 3, &str_size, 1);
 ut64 length = r_buf_size (b);
 if (str_size + 2 != rec_size || length < rec_size + 3) {
  return 0;
 }

 for (i = 4; i < str_size + 4; i++) {
  if (r_buf_read_at (b, i, &ch, 1) != 1) {
   break;
  }
  if (ch > 0x7f) {
   return 0;
  }
 }
 const ut8 *buf = r_buf_data (b, ((void*)0));
 if (buf == ((void*)0)) {

  ut8 buf[1024] = {0};
  r_buf_read_at (b, 0, buf, sizeof (buf));
  return r_bin_checksum_omf_ok (buf, sizeof (buf));
 }
 r_return_val_if_fail (buf, 0);
 return r_bin_checksum_omf_ok (buf, length);
}
