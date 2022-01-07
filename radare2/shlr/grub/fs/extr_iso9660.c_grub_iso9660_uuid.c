
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * hundredth; int * second; int * minute; int * hour; int * day; int * month; int * year; } ;
struct TYPE_6__ {TYPE_1__ modified; } ;
struct grub_iso9660_data {TYPE_2__ voldesc; } ;
typedef int grub_err_t ;
typedef int grub_disk_t ;
typedef TYPE_3__* grub_device_t ;
struct TYPE_7__ {int disk; } ;


 int GRUB_ERR_BAD_NUMBER ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_iso9660_data*) ;
 struct grub_iso9660_data* grub_iso9660_mount (int ) ;
 char* grub_xasprintf (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_iso9660_uuid (grub_device_t device, char **uuid)
{
  struct grub_iso9660_data *data;
  grub_disk_t disk = device->disk;

  grub_dl_ref (my_mod);

  data = grub_iso9660_mount (disk);
  if (data)
    {
      if (! data->voldesc.modified.year[0] && ! data->voldesc.modified.year[1]
   && ! data->voldesc.modified.year[2] && ! data->voldesc.modified.year[3]
   && ! data->voldesc.modified.month[0] && ! data->voldesc.modified.month[1]
   && ! data->voldesc.modified.day[0] && ! data->voldesc.modified.day[1]
   && ! data->voldesc.modified.hour[0] && ! data->voldesc.modified.hour[1]
   && ! data->voldesc.modified.minute[0] && ! data->voldesc.modified.minute[1]
   && ! data->voldesc.modified.second[0] && ! data->voldesc.modified.second[1]
   && ! data->voldesc.modified.hundredth[0] && ! data->voldesc.modified.hundredth[1])
 {
   grub_error (GRUB_ERR_BAD_NUMBER, "no creation date in filesystem to generate UUID");
   *uuid = ((void*)0);
 }
      else
 {
   *uuid = grub_xasprintf ("%c%c%c%c-%c%c-%c%c-%c%c-%c%c-%c%c-%c%c",
     data->voldesc.modified.year[0],
     data->voldesc.modified.year[1],
     data->voldesc.modified.year[2],
     data->voldesc.modified.year[3],
     data->voldesc.modified.month[0],
     data->voldesc.modified.month[1],
     data->voldesc.modified.day[0],
     data->voldesc.modified.day[1],
     data->voldesc.modified.hour[0],
     data->voldesc.modified.hour[1],
     data->voldesc.modified.minute[0],
     data->voldesc.modified.minute[1],
     data->voldesc.modified.second[0],
     data->voldesc.modified.second[1],
     data->voldesc.modified.hundredth[0],
     data->voldesc.modified.hundredth[1]);
 }
    }
  else
    *uuid = ((void*)0);

 grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
