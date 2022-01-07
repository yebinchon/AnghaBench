
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_fat_data {int uuid; } ;
typedef int grub_uint16_t ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_3__ {int disk; } ;


 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 struct grub_fat_data* grub_fat_mount (int ) ;
 int grub_free (struct grub_fat_data*) ;
 char* grub_xasprintf (char*,int ,int ) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_fat_uuid (grub_device_t device, char **uuid)
{
  struct grub_fat_data *data;
  grub_disk_t disk = device->disk;

  grub_dl_ref (my_mod);

  data = grub_fat_mount (disk);
  if (data)
    {
      *uuid = grub_xasprintf ("%04x-%04x",
        (grub_uint16_t) (data->uuid >> 16),
        (grub_uint16_t) data->uuid);
    }
  else
    *uuid = ((void*)0);

  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
