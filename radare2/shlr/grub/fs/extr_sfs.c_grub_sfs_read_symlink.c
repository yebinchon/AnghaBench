
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_sfs_data {int blocksize; int disk; } ;
typedef TYPE_1__* grub_fshelp_node_t ;
struct TYPE_3__ {int block; struct grub_sfs_data* data; } ;


 int grub_disk_read (int ,int ,int ,int ,char*) ;
 scalar_t__ grub_errno ;
 int grub_free (char*) ;
 char* grub_malloc (int ) ;
 char* grub_strdup (char*) ;

__attribute__((used)) static char *
grub_sfs_read_symlink (grub_fshelp_node_t node)
{
  struct grub_sfs_data *data = node->data;
  char *symlink;
  char *block;

  block = grub_malloc (data->blocksize);
  if (!block)
    return 0;

  grub_disk_read (data->disk, node->block, 0, data->blocksize, block);
  if (grub_errno)
    {
      grub_free (block);
      return 0;
    }



  symlink = grub_strdup (&block[24]);
  grub_free (block);
  if (!symlink)
    return 0;

  return symlink;
}
