
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int grub_size_t ;
typedef int grub_off_t ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef int grub_disk_addr_t ;


 int GRUB_DISK_SECTOR_BITS ;
 int GRUB_DISK_SECTOR_SIZE ;
 int GRUB_ERR_NONE ;

__attribute__((used)) static grub_err_t
grub_disk_adjust_range (grub_disk_t disk, grub_disk_addr_t *sector,
   grub_off_t *offset, grub_size_t size)
{
  *sector += *offset >> GRUB_DISK_SECTOR_BITS;
  *offset &= GRUB_DISK_SECTOR_SIZE - 1;
  return GRUB_ERR_NONE;

}
