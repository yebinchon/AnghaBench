
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int grub_err_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_4__ {scalar_t__ disk; } ;


 int grub_disk_close (scalar_t__) ;
 int grub_errno ;
 int grub_free (TYPE_1__*) ;

grub_err_t
grub_device_close (grub_device_t device)
{
  if (device->disk)
    grub_disk_close (device->disk);

  grub_free (device);

  return grub_errno;
}
