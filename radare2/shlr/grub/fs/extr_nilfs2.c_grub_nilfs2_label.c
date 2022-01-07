
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s_volume_name; } ;
struct grub_nilfs2_data {TYPE_1__ sblock; } ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_free (struct grub_nilfs2_data*) ;
 struct grub_nilfs2_data* grub_nilfs2_mount (int ) ;
 char* grub_strndup (int ,int) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_nilfs2_label (grub_device_t device, char **label)
{
  struct grub_nilfs2_data *data;
  grub_disk_t disk = device->disk;

  grub_dl_ref (my_mod);

  data = grub_nilfs2_mount (disk);
  if (data)
    *label = grub_strndup (data->sblock.s_volume_name, 14);
  else
    *label = ((void*)0);

  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
