
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * volname; } ;
struct grub_hfs_data {TYPE_1__ sblock; } ;
typedef int grub_err_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 int grub_errno ;
 int grub_free (struct grub_hfs_data*) ;
 struct grub_hfs_data* grub_hfs_mount (int ) ;
 char* grub_strndup (char*,int ) ;

__attribute__((used)) static grub_err_t
grub_hfs_label (grub_device_t device, char **label)
{
  struct grub_hfs_data *data;

  data = grub_hfs_mount (device->disk);

  if (data)
    *label = grub_strndup ((char *) (data->sblock.volname + 1),
      *data->sblock.volname);
  else
    *label = 0;

  grub_free (data);
  return grub_errno;
}
