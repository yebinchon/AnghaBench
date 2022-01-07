
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef scalar_t__ ut16 ;
typedef int RBuffer ;


 scalar_t__ r_buf_read_le16_at (int *,int) ;
 int r_buf_size (int *) ;

__attribute__((used)) static bool check_buffer(RBuffer *b) {
 ut16 cksum1, cksum2;
 ut64 length = r_buf_size (b);





 if (length < 0x8000) {
  return 0;
 }

 cksum1 = r_buf_read_le16_at (b, 0x7fdc);
 cksum2 = r_buf_read_le16_at (b, 0x7fde);

 if (cksum1 == (ut16)~cksum2) {
  return 1;
 }
 if (length < 0xffee) {
  return 0;
 }
 cksum1 = r_buf_read_le16_at (b, 0xffdc);
 cksum2 = r_buf_read_le16_at (b, 0xffde);
 return (cksum1 == (ut16)~cksum2);
}
