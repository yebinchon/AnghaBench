
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int grub_err_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_3__ {int disk; } ;


 int GRUB_DISK_SECTOR_SIZE ;
 int REISERFS_LABEL_OFFSET ;
 int REISERFS_MAX_LABEL_LENGTH ;
 int REISERFS_SUPER_BLOCK_OFFSET ;
 int grub_disk_read (int ,int,int ,int ,char*) ;
 int grub_errno ;
 char* grub_malloc (int ) ;

__attribute__((used)) static grub_err_t
grub_reiserfs_label (grub_device_t device, char **label)
{
  *label = grub_malloc (REISERFS_MAX_LABEL_LENGTH);
  if (*label)
    {
      grub_disk_read (device->disk,
                      REISERFS_SUPER_BLOCK_OFFSET / GRUB_DISK_SECTOR_SIZE,
                      REISERFS_LABEL_OFFSET, REISERFS_MAX_LABEL_LENGTH,
                      *label);
    }
  return grub_errno;
}
