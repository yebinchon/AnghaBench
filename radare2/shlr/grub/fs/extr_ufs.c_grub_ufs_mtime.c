
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mtime; int mtime2; } ;
struct grub_ufs_data {int be; TYPE_1__ sblock; } ;
typedef int grub_int32_t ;
typedef int grub_err_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_free (struct grub_ufs_data*) ;
 int grub_num_to_cpu32 (int ,int ) ;
 int grub_num_to_cpu64 (int ,int ) ;
 struct grub_ufs_data* grub_ufs_mount (int ) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_ufs_mtime (grub_device_t device, grub_int32_t *tm)
{
  struct grub_ufs_data *data = 0;

  grub_dl_ref (my_mod);

  data = grub_ufs_mount (device->disk);
  if (!data)
    *tm = 0;
  else



    *tm = grub_num_to_cpu32 (data->sblock.mtime, data->be);


  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
