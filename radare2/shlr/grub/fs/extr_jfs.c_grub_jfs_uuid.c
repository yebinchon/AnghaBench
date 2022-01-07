
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * uuid; } ;
struct grub_jfs_data {TYPE_1__ sblock; } ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_free (struct grub_jfs_data*) ;
 struct grub_jfs_data* grub_jfs_mount (int ) ;
 char* grub_xasprintf (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_jfs_uuid (grub_device_t device, char **uuid)
{
  struct grub_jfs_data *data;
  grub_disk_t disk = device->disk;

  grub_dl_ref (my_mod);

  data = grub_jfs_mount (disk);
  if (data)
    {
      *uuid = grub_xasprintf ("%02x%02x%02x%02x-%02x%02x-%02x%02x-%02x%02x-"
        "%02x%02x%02x%02x%02x%02x",
        data->sblock.uuid[0], data->sblock.uuid[1],
        data->sblock.uuid[2], data->sblock.uuid[3],
        data->sblock.uuid[4], data->sblock.uuid[5],
        data->sblock.uuid[6], data->sblock.uuid[7],
        data->sblock.uuid[8], data->sblock.uuid[9],
        data->sblock.uuid[10], data->sblock.uuid[11],
        data->sblock.uuid[12], data->sblock.uuid[13],
        data->sblock.uuid[14], data->sblock.uuid[15]);
    }
  else
    *uuid = ((void*)0);

  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
