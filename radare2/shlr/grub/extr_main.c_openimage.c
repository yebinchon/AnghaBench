
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int grub_fs_t ;
typedef TYPE_1__* grub_file_t ;
typedef TYPE_2__* grub_disk_dev_t ;
struct TYPE_7__ {TYPE_2__* dev; struct TYPE_7__* disk; } ;
struct TYPE_6__ {int read; } ;
struct TYPE_5__ {int size; void* data; scalar_t__ offset; int fs; TYPE_4__* device; } ;
typedef int FILE ;


 int IMGFILE ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fread (void*,int,int,int *) ;
 void* malloc (int) ;
 int memset (TYPE_4__*,int ,int) ;
 int printf (char*) ;
 int read_foo ;

grub_file_t openimage(grub_fs_t fs, const char *str) {
 grub_file_t file = malloc (1024);
 file->device = malloc (1024);
 memset (file->device, 0, 1024);
 file->device->disk = malloc (1024);
 memset (file->device->disk, 0, 1024);

 file->device->disk->dev = (grub_disk_dev_t)file->device;

 file->device->disk->dev->read = read_foo;




 file->fs = fs;
 return file;
}
