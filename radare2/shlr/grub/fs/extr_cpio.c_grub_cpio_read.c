
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_cpio_data {scalar_t__ dofs; int disk; } ;
typedef int grub_ssize_t ;
typedef scalar_t__ grub_size_t ;
typedef TYPE_1__* grub_file_t ;
struct TYPE_3__ {scalar_t__ offset; struct grub_cpio_data* data; } ;


 scalar_t__ grub_disk_read (int ,int ,scalar_t__,scalar_t__,char*) ;

__attribute__((used)) static grub_ssize_t
grub_cpio_read (grub_file_t file, char *buf, grub_size_t len)
{
  struct grub_cpio_data *data;

  data = file->data;
  return (grub_disk_read (data->disk, 0, data->dofs + file->offset,
     len, buf)) ? -1 : (grub_ssize_t) len;
}
