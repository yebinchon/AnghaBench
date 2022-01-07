
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtd_info {int dummy; } ;
struct ar934x_nfc {int buf_index; int buf_size; int * buf; scalar_t__ swap_dma; } ;


 int WARN_ON (int) ;
 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;

__attribute__((used)) static void
ar934x_nfc_write_buf(struct mtd_info *mtd, const u8 *buf, int len)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
 int i;

 WARN_ON(nfc->buf_index + len > nfc->buf_size);

 if (nfc->swap_dma) {
  for (i = 0; i < len; i++) {
   nfc->buf[nfc->buf_index ^ 3] = buf[i];
   nfc->buf_index++;
  }
 } else {
  for (i = 0; i < len; i++) {
   nfc->buf[nfc->buf_index] = buf[i];
   nfc->buf_index++;
  }
 }
}
