
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grub_fs_block {scalar_t__ length; scalar_t__ offset; } ;
typedef int grub_ssize_t ;
typedef scalar_t__ grub_size_t ;
typedef scalar_t__ grub_off_t ;
typedef TYPE_2__* grub_file_t ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ offset; int flags; TYPE_1__* device; struct grub_fs_block* data; } ;
struct TYPE_4__ {int disk; } ;


 scalar_t__ GRUB_ERR_NONE ;
 scalar_t__ grub_disk_read_ex (int ,int ,scalar_t__,scalar_t__,char*,int ) ;
 int grub_disk_write (int ,int ,scalar_t__,scalar_t__,char*) ;

__attribute__((used)) static grub_ssize_t
grub_fs_blocklist_rw (int write, grub_file_t file, char *buf, grub_size_t len)
{
  struct grub_fs_block *p;
  grub_off_t offset;
  grub_ssize_t ret = 0;

  if (len > file->size - file->offset)
    len = file->size - file->offset;

  offset = file->offset;
  for (p = file->data; p->length && len > 0; p++)
    {
      if (offset < p->length)
 {
   grub_size_t size;

   size = len;
   if (offset + size > p->length)
     size = p->length - offset;

   if (buf && (write) ?
        grub_disk_write (file->device->disk, 0, p->offset + offset,
    size, buf) :
        grub_disk_read_ex (file->device->disk, 0, p->offset + offset,
      size, buf, file->flags) != GRUB_ERR_NONE)
     return -1;

   ret += size;
   len -= size;
   if (buf)
     buf += size;
   offset += size;
 }
      offset -= p->length;
    }

  return ret;
}
