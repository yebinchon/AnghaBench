
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_ntfs_data {scalar_t__ uuid; } ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_3__ {int disk; } ;


 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_free (struct grub_ntfs_data*) ;
 struct grub_ntfs_data* grub_ntfs_mount (int ) ;
 char* grub_xasprintf (char*,unsigned long long) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_ntfs_uuid (grub_device_t device, char **uuid)
{
  struct grub_ntfs_data *data;
  grub_disk_t disk = device->disk;

  grub_dl_ref (my_mod);

  data = grub_ntfs_mount (disk);
  if (data)
    {
      *uuid = grub_xasprintf ("%016llx", (unsigned long long) data->uuid);
    }
  else
    *uuid = ((void*)0);

  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
