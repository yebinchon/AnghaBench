
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_sfs_data {int diropen; } ;
typedef int grub_ssize_t ;
typedef int grub_size_t ;
typedef TYPE_1__* grub_file_t ;
struct TYPE_3__ {int offset; int flags; int closure; int read_hook; scalar_t__ data; } ;


 int grub_sfs_read_file (int *,int ,int ,int ,int ,int ,char*) ;

__attribute__((used)) static grub_ssize_t
grub_sfs_read (grub_file_t file, char *buf, grub_size_t len)
{
  struct grub_sfs_data *data = (struct grub_sfs_data *) file->data;

  int size = grub_sfs_read_file (&data->diropen, file->read_hook,
     file->closure, file->flags,
     file->offset, len, buf);

  return size;
}
