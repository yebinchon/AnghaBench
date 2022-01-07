
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ident; } ;
struct grub_udf_data {TYPE_1__ lvd; } ;
typedef int grub_err_t ;
typedef TYPE_2__* grub_device_t ;
struct TYPE_5__ {int disk; } ;


 int grub_errno ;
 int grub_free (struct grub_udf_data*) ;
 char* grub_strdup (char*) ;
 struct grub_udf_data* grub_udf_mount (int ) ;

__attribute__((used)) static grub_err_t
grub_udf_label (grub_device_t device, char **label)
{
  struct grub_udf_data *data;
  data = grub_udf_mount (device->disk);

  if (data)
    {
      *label = grub_strdup ((char *) &data->lvd.ident[1]);
      grub_free (data);
    }
  else
    *label = 0;

  return grub_errno;
}
