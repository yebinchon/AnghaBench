
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ volname; } ;
struct grub_jfs_data {TYPE_1__ sblock; } ;
typedef int grub_err_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 int grub_errno ;
 struct grub_jfs_data* grub_jfs_mount (int ) ;
 char* grub_strndup (char*,int) ;

__attribute__((used)) static grub_err_t
grub_jfs_label (grub_device_t device, char **label)
{
  struct grub_jfs_data *data;
  data = grub_jfs_mount (device->disk);

  if (data)
    *label = grub_strndup ((char *) (data->sblock.volname), 11);
  else
    *label = 0;

  return grub_errno;
}
