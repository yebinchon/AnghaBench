
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int utime; } ;
struct grub_hfsplus_data {TYPE_1__ volheader; } ;
typedef scalar_t__ grub_int32_t ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 scalar_t__ grub_be_to_cpu32 (int ) ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_free (struct grub_hfsplus_data*) ;
 struct grub_hfsplus_data* grub_hfsplus_mount (int ) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_hfsplus_mtime (grub_device_t device, grub_int32_t *tm)
{
  struct grub_hfsplus_data *data;
  grub_disk_t disk = device->disk;

  grub_dl_ref (my_mod);

  data = grub_hfsplus_mount (disk);
  if (!data)
    *tm = 0;
  else
    *tm = grub_be_to_cpu32 (data->volheader.utime) - 2082844800;

  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;

}
