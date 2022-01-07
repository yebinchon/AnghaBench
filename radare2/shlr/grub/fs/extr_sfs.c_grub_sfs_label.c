
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_sfs_data {char* label; } ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_3__ {int disk; } ;


 int grub_errno ;
 int grub_free (struct grub_sfs_data*) ;
 struct grub_sfs_data* grub_sfs_mount (int ) ;

__attribute__((used)) static grub_err_t
grub_sfs_label (grub_device_t device, char **label)
{
  struct grub_sfs_data *data;
  grub_disk_t disk = device->disk;

  data = grub_sfs_mount (disk);
  if (data)
    *label = data->label;

  grub_free (data);

  return grub_errno;
}
