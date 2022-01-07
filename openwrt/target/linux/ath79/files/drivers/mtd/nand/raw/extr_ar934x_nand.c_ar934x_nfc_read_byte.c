
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtd_info {int dummy; } ;
struct ar934x_nfc {int buf_index; int buf_size; int * buf; scalar_t__ read_id; scalar_t__ swap_dma; } ;


 int WARN_ON (int) ;
 struct ar934x_nfc* mtd_to_ar934x_nfc (struct mtd_info*) ;

__attribute__((used)) static u8 ar934x_nfc_read_byte(struct mtd_info *mtd)
{
 struct ar934x_nfc *nfc = mtd_to_ar934x_nfc(mtd);
 u8 data;

 WARN_ON(nfc->buf_index >= nfc->buf_size);

 if (nfc->swap_dma || nfc->read_id)
  data = nfc->buf[nfc->buf_index ^ 3];
 else
  data = nfc->buf[nfc->buf_index];

 nfc->buf_index++;

 return data;
}
