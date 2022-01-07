
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * uuid; } ;
struct grub_reiserfs_data {TYPE_1__ superblock; } ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 int grub_be_to_cpu16 (int ) ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_free (struct grub_reiserfs_data*) ;
 struct grub_reiserfs_data* grub_reiserfs_mount (int ) ;
 char* grub_xasprintf (char*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_reiserfs_uuid (grub_device_t device, char **uuid)
{
  struct grub_reiserfs_data *data;
  grub_disk_t disk = device->disk;

  grub_dl_ref (my_mod);

  data = grub_reiserfs_mount (disk);
  if (data)
    {
      *uuid = grub_xasprintf ("%04x%04x-%04x-%04x-%04x-%04x%04x%04x",
        grub_be_to_cpu16 (data->superblock.uuid[0]),
        grub_be_to_cpu16 (data->superblock.uuid[1]),
        grub_be_to_cpu16 (data->superblock.uuid[2]),
        grub_be_to_cpu16 (data->superblock.uuid[3]),
        grub_be_to_cpu16 (data->superblock.uuid[4]),
        grub_be_to_cpu16 (data->superblock.uuid[5]),
        grub_be_to_cpu16 (data->superblock.uuid[6]),
        grub_be_to_cpu16 (data->superblock.uuid[7]));
    }
  else
    *uuid = ((void*)0);

  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
