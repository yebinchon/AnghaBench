
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_ufs_data {int dummy; } ;
typedef int grub_ssize_t ;
typedef int grub_size_t ;
typedef TYPE_1__* grub_file_t ;
struct TYPE_3__ {int offset; int closure; int read_hook; scalar_t__ data; } ;


 int grub_ufs_read_file (struct grub_ufs_data*,int ,int ,int ,int ,char*) ;

__attribute__((used)) static grub_ssize_t
grub_ufs_read (grub_file_t file, char *buf, grub_size_t len)
{
  struct grub_ufs_data *data =
    (struct grub_ufs_data *) file->data;

  return grub_ufs_read_file (data, file->read_hook, file->closure,
        file->offset, len, buf);
}
