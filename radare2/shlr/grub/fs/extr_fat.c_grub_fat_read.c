
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int grub_ssize_t ;
typedef int grub_size_t ;
typedef TYPE_2__* grub_file_t ;
struct TYPE_5__ {int offset; int flags; int closure; int read_hook; int data; TYPE_1__* device; } ;
struct TYPE_4__ {int disk; } ;


 int grub_fat_read_data (int ,int ,int ,int ,int ,int ,int ,char*) ;

__attribute__((used)) static grub_ssize_t
grub_fat_read (grub_file_t file, char *buf, grub_size_t len)
{
  return grub_fat_read_data (file->device->disk, file->data, file->read_hook,
        file->closure, file->flags,
        file->offset, len, buf);
}
