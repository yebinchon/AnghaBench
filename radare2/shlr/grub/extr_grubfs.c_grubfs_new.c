
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct grub_fs {int dummy; } ;
struct grub_file {struct grub_fs* fs; TYPE_2__* device; } ;
struct grub_disk {int dummy; } ;
struct grub_device {int dummy; } ;
typedef TYPE_3__* grub_disk_dev_t ;
struct TYPE_9__ {struct grub_file* file; } ;
struct TYPE_8__ {int read; } ;
struct TYPE_7__ {TYPE_1__* disk; } ;
struct TYPE_6__ {void* data; TYPE_3__* dev; } ;
typedef TYPE_4__ GrubFS ;


 void* empty (int) ;
 int read_foo ;

GrubFS *grubfs_new (struct grub_fs *myfs, void *data) {
 struct grub_file *file;
 GrubFS *gfs = empty (sizeof (GrubFS));

 gfs->file = file = empty (sizeof (struct grub_file));
 file->device = empty (sizeof (struct grub_device)+1024);
 file->device->disk = empty (sizeof (struct grub_disk));
 file->device->disk->dev = (grub_disk_dev_t)file->device;
 file->device->disk->dev->read = read_foo;
 file->device->disk->data = data;

 file->fs = myfs;
 return gfs;
}
