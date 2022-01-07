
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ grub_disk_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_5__ {scalar_t__ net; scalar_t__ disk; } ;


 int GRUB_ERR_BAD_DEVICE ;
 int grub_disk_close (scalar_t__) ;
 scalar_t__ grub_disk_open (char const*) ;
 char* grub_env_get (char*) ;
 int grub_error (int ,char*) ;
 int grub_free (TYPE_1__*) ;
 TYPE_1__* grub_malloc (int) ;

grub_device_t
grub_device_open (const char *name)
{
  grub_disk_t disk = 0;
  grub_device_t dev = 0;

  if (! name)
    {
      name = grub_env_get ("root");
      if (*name == '\0')
 {
   grub_error (GRUB_ERR_BAD_DEVICE, "no device is set");
   goto fail;
 }
    }

  dev = grub_malloc (sizeof (*dev));
  if (! dev)
    goto fail;


  disk = grub_disk_open (name);
  if (! disk)
    goto fail;

  dev->disk = disk;
  dev->net = 0;

  return dev;

 fail:
  if (disk)
    grub_disk_close (disk);

  grub_free (dev);

  return 0;
}
