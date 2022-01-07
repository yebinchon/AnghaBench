
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_uint32_t ;
typedef int grub_disk_addr_t ;


 unsigned int GRUB_DISK_SECTOR_SIZE ;
 int GRUB_ERR_BAD_FS ;
 int grub_error (int ,char*) ;

__attribute__((used)) static void
read_mft_hook (grub_disk_addr_t sector, unsigned offset,
        unsigned length, void *closure)
{
  grub_uint32_t **s = closure;

  if (*s)
    {
      if ((offset != 0) || (length != GRUB_DISK_SECTOR_SIZE))
 grub_error (GRUB_ERR_BAD_FS, "invalid mft location");
      **s = sector;
      *s = 0;
    }
}
