
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int grub_ssize_t ;
typedef int grub_size_t ;
typedef TYPE_3__* grub_file_t ;
struct TYPE_8__ {TYPE_2__* device; int closure; scalar_t__ read_hook; } ;
struct TYPE_7__ {TYPE_1__* disk; } ;
struct TYPE_6__ {scalar_t__ read_hook; int closure; } ;


 int grub_fs_blocklist_rw (int ,TYPE_3__*,char*,int ) ;

__attribute__((used)) static grub_ssize_t
grub_fs_blocklist_read (grub_file_t file, char *buf, grub_size_t len)
{
  grub_ssize_t ret;
  file->device->disk->read_hook = file->read_hook;
  file->device->disk->closure = file->closure;
  ret = grub_fs_blocklist_rw (0, file, buf, len);
  file->device->disk->read_hook = 0;
  return ret;
}
