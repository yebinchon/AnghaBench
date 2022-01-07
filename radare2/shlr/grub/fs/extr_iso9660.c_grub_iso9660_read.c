
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grub_iso9660_data {int first_sector; TYPE_3__* disk; } ;
typedef int grub_ssize_t ;
typedef int grub_size_t ;
typedef TYPE_1__* grub_file_t ;
struct TYPE_5__ {int * read_hook; int closure; } ;
struct TYPE_4__ {int flags; int offset; int closure; int * read_hook; scalar_t__ data; } ;


 int GRUB_ISO9660_LOG2_BLKSZ ;
 int grub_disk_read_ex (TYPE_3__*,int,int ,int,char*,int ) ;
 scalar_t__ grub_errno ;

__attribute__((used)) static grub_ssize_t
grub_iso9660_read (grub_file_t file, char *buf, grub_size_t len)
{
  struct grub_iso9660_data *data =
    (struct grub_iso9660_data *) file->data;


  data->disk->read_hook = file->read_hook;
  data->disk->closure = file->closure;
  grub_disk_read_ex (data->disk,
       data->first_sector << GRUB_ISO9660_LOG2_BLKSZ,
       file->offset,
       len, buf, file->flags);
  data->disk->read_hook = ((void*)0);

  if (grub_errno)
    return -1;

  return len;
}
