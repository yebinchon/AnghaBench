
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct grub_fshelp_node {TYPE_3__* inode; int diropen; } ;
struct grub_file {scalar_t__ offset; struct grub_fshelp_node* data; int size; TYPE_1__* device; } ;
struct grub_afs_inode {int dummy; } ;
struct grub_afs_data {TYPE_3__* inode; int diropen; } ;
typedef scalar_t__ grub_err_t ;
struct TYPE_6__ {int size; } ;
struct TYPE_7__ {TYPE_2__ stream; } ;
struct TYPE_5__ {int disk; } ;


 int GRUB_FSHELP_REG ;
 int grub_afs_iterate_dir ;
 struct grub_fshelp_node* grub_afs_mount (int ) ;
 int grub_afs_read_symlink ;
 int grub_afs_to_cpu64 (int ) ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 scalar_t__ grub_errno ;
 int grub_free (struct grub_fshelp_node*) ;
 int grub_fshelp_find_file (char const*,int *,struct grub_fshelp_node**,int ,int ,int ,int ) ;
 int grub_memcpy (TYPE_3__*,TYPE_3__**,int) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_afs_open (struct grub_file *file, const char *name)
{
  struct grub_afs_data *data;
  struct grub_fshelp_node *fdiro = 0;

  grub_dl_ref (my_mod);

  data = grub_afs_mount (file->device->disk);
  if (! data)
    goto fail;

  grub_fshelp_find_file (name, &data->diropen, &fdiro, grub_afs_iterate_dir, 0,
    grub_afs_read_symlink, GRUB_FSHELP_REG);
  if (grub_errno)
    goto fail;

  grub_memcpy (data->inode, &fdiro->inode, sizeof (struct grub_afs_inode));
  grub_free (fdiro);

  file->size = grub_afs_to_cpu64 (data->inode->stream.size);
  file->data = data;
  file->offset = 0;

  return 0;

fail:
  grub_free (data);

  grub_dl_unref (my_mod);

  return grub_errno;
}
