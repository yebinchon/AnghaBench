
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_fat_data {int attr; } ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_3__ {int disk; } ;


 int GRUB_ERR_BAD_FILE_TYPE ;
 int GRUB_FAT_ATTR_DIRECTORY ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_error (int ,char*) ;
 int grub_fat_iterate_dir (int ,struct grub_fat_data*,int ,char**) ;
 int grub_fat_label_hook ;
 struct grub_fat_data* grub_fat_mount (int ) ;
 int grub_free (struct grub_fat_data*) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_fat_label (grub_device_t device, char **label)
{
  struct grub_fat_data *data;
  grub_disk_t disk = device->disk;

  grub_dl_ref (my_mod);

  data = grub_fat_mount (disk);
  if (! data)
    goto fail;

  if (! (data->attr & GRUB_FAT_ATTR_DIRECTORY))
    {
      grub_error (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
      return 0;
    }

  *label = 0;

  grub_fat_iterate_dir (disk, data, grub_fat_label_hook, label);

 fail:

  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
