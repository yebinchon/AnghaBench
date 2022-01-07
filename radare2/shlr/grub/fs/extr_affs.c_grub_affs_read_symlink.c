
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_affs_data {int blocksize; int disk; } ;
typedef TYPE_1__* grub_fshelp_node_t ;
struct TYPE_3__ {int block; struct grub_affs_data* data; } ;


 int GRUB_AFFS_SYMLINK_OFFSET ;
 int GRUB_AFFS_SYMLINK_SIZE (int ) ;
 int grub_disk_read (int ,int ,int ,int ,char*) ;
 int grub_dprintf (char*,char*,char*) ;
 scalar_t__ grub_errno ;
 int grub_free (char*) ;
 char* grub_malloc (int ) ;

__attribute__((used)) static char *
grub_affs_read_symlink (grub_fshelp_node_t node)
{
  struct grub_affs_data *data = node->data;
  char *symlink;

  symlink = grub_malloc (GRUB_AFFS_SYMLINK_SIZE (data->blocksize));
  if (!symlink)
    return 0;

  grub_disk_read (data->disk, node->block, GRUB_AFFS_SYMLINK_OFFSET,
    GRUB_AFFS_SYMLINK_SIZE (data->blocksize), symlink);
  if (grub_errno)
    {
      grub_free (symlink);
      return 0;
    }
  grub_dprintf ("affs", "Symlink: `%s'\n", symlink);
  return symlink;
}
