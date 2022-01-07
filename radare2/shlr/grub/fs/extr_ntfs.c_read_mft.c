
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attr; } ;
struct grub_ntfs_data {int mft_size; TYPE_1__ mmft; } ;
typedef int grub_uint32_t ;
typedef int grub_err_t ;
typedef int grub_disk_addr_t ;


 int BLK_SHR ;
 int GRUB_ERR_BAD_FS ;
 int fixup (struct grub_ntfs_data*,char*,int,char*) ;
 int grub_error (int ,char*,int) ;
 scalar_t__ read_attr (int *,char*,int,int,int ,int ,int**,int ) ;
 int read_mft_hook ;

__attribute__((used)) static grub_err_t
read_mft (struct grub_ntfs_data *data, char *buf, grub_uint32_t mftno,
   grub_uint32_t *sector)
{
  if (read_attr
      (&data->mmft.attr, buf, mftno * ((grub_disk_addr_t) data->mft_size << BLK_SHR),
       data->mft_size << BLK_SHR, 0, read_mft_hook, &sector, 0))
    return grub_error (GRUB_ERR_BAD_FS, "Read MFT 0x%X fails", mftno);
  return fixup (data, buf, data->mft_size, "FILE");
}
