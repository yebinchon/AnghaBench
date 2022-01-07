
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int grub_ssize_t ;
typedef int grub_size_t ;
typedef TYPE_1__* grub_file_t ;
struct TYPE_4__ {int * fs; } ;


 int grub_fs_blocklist ;
 int grub_fs_blocklist_rw (int,TYPE_1__*,char*,int ) ;

grub_ssize_t
grub_blocklist_write (grub_file_t file, const char *buf, grub_size_t len)
{
  return (file->fs != &grub_fs_blocklist) ? -1 :
    grub_fs_blocklist_rw (1, file, (char *) buf, len);
}
