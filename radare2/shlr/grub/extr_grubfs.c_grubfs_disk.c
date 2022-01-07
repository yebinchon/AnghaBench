
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_disk_dev {int dummy; } ;
struct grub_disk {void* data; TYPE_1__* dev; } ;
typedef struct grub_disk* grub_disk_t ;
struct TYPE_2__ {int read; } ;


 void* empty (int) ;
 int read_foo ;

grub_disk_t grubfs_disk (void *data) {
 struct grub_disk *disk = empty (sizeof (struct grub_disk));
 disk->dev = empty (sizeof (struct grub_disk_dev));
 disk->dev->read = read_foo;
 disk->data = data;
 return disk;
}
