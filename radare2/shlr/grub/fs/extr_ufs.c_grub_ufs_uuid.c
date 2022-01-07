
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ uuidhi; scalar_t__ uuidlow; } ;
struct grub_ufs_data {TYPE_1__ sblock; } ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_free (struct grub_ufs_data*) ;
 scalar_t__ grub_le_to_cpu32 (scalar_t__) ;
 struct grub_ufs_data* grub_ufs_mount (int ) ;
 char* grub_xasprintf (char*,unsigned int,unsigned int) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_ufs_uuid (grub_device_t device, char **uuid)
{
  struct grub_ufs_data *data;
  grub_disk_t disk = device->disk;

  grub_dl_ref (my_mod);

  data = grub_ufs_mount (disk);
  if (data && (data->sblock.uuidhi != 0 || data->sblock.uuidlow != 0))
    *uuid = grub_xasprintf ("%08x%08x",
      (unsigned) grub_le_to_cpu32 (data->sblock.uuidhi),
      (unsigned) grub_le_to_cpu32 (data->sblock.uuidlow));
  else
    *uuid = ((void*)0);

  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
