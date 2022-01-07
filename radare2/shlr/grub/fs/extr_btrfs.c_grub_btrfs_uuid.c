
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * uuid; } ;
struct grub_btrfs_data {TYPE_1__ sblock; } ;
typedef int grub_err_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 int grub_be_to_cpu16 (int ) ;
 struct grub_btrfs_data* grub_btrfs_mount (int ) ;
 int grub_errno ;
 int grub_free (struct grub_btrfs_data*) ;
 char* grub_xasprintf (char*,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static grub_err_t
grub_btrfs_uuid (grub_device_t device, char **uuid)
{
  struct grub_btrfs_data *data;

  *uuid = ((void*)0);

  data = grub_btrfs_mount (device->disk);
  if (! data)
    return grub_errno;

  *uuid = grub_xasprintf ("%04x%04x-%04x-%04x-%04x-%04x%04x%04x",
     grub_be_to_cpu16 (data->sblock.uuid[0]),
     grub_be_to_cpu16 (data->sblock.uuid[1]),
     grub_be_to_cpu16 (data->sblock.uuid[2]),
     grub_be_to_cpu16 (data->sblock.uuid[3]),
     grub_be_to_cpu16 (data->sblock.uuid[4]),
     grub_be_to_cpu16 (data->sblock.uuid[5]),
     grub_be_to_cpu16 (data->sblock.uuid[6]),
     grub_be_to_cpu16 (data->sblock.uuid[7]));

  grub_free (data);

  return grub_errno;
}
