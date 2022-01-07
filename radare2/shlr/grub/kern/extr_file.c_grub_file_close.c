
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* grub_file_t ;
typedef int grub_err_t ;
struct TYPE_7__ {scalar_t__ device; TYPE_1__* fs; } ;
struct TYPE_6__ {int (* close ) (TYPE_2__*) ;} ;


 int grub_device_close (scalar_t__) ;
 int grub_errno ;
 int grub_free (TYPE_2__*) ;
 int stub1 (TYPE_2__*) ;

grub_err_t
grub_file_close (grub_file_t file)
{
  if (file->fs->close)
    (file->fs->close) (file);

  if (file->device)
    grub_device_close (file->device);
  grub_free (file);
  return grub_errno;
}
