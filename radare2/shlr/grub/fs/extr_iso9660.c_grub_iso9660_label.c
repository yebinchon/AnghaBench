
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ volname; } ;
struct grub_iso9660_data {TYPE_1__ voldesc; scalar_t__ joliet; } ;
typedef int grub_uint16_t ;
typedef int grub_err_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 int grub_errno ;
 int grub_free (struct grub_iso9660_data*) ;
 char* grub_iso9660_convert_string (int *,int) ;
 struct grub_iso9660_data* grub_iso9660_mount (int ) ;
 char* grub_strndup (char*,int) ;

__attribute__((used)) static grub_err_t
grub_iso9660_label (grub_device_t device, char **label)
{
  struct grub_iso9660_data *data;
  data = grub_iso9660_mount (device->disk);

  if (data)
    {
      if (data->joliet)
        *label = grub_iso9660_convert_string
                 ((grub_uint16_t *) &data->voldesc.volname, 16);
      else
        *label = grub_strndup ((char *) data->voldesc.volname, 32);
      grub_free (data);
    }
  else
    *label = 0;

  return grub_errno;
}
