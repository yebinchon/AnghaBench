
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; int first_sector; } ;
struct TYPE_6__ {TYPE_2__ rootdir; } ;
struct grub_iso9660_data {void* first_sector; TYPE_3__ voldesc; } ;
struct grub_fshelp_node {void* size; void* blk; struct grub_iso9660_data* data; } ;
struct grub_file {scalar_t__ offset; void* size; struct grub_iso9660_data* data; TYPE_1__* device; } ;
typedef int grub_err_t ;
struct TYPE_4__ {int disk; } ;


 int GRUB_FSHELP_REG ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_free (struct grub_iso9660_data*) ;
 scalar_t__ grub_fshelp_find_file (char const*,struct grub_fshelp_node*,struct grub_fshelp_node**,int ,int ,int ,int ) ;
 int grub_iso9660_iterate_dir ;
 struct grub_iso9660_data* grub_iso9660_mount (int ) ;
 int grub_iso9660_read_symlink ;
 void* grub_le_to_cpu32 (int ) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_iso9660_open (struct grub_file *file, const char *name)
{
  struct grub_iso9660_data *data;
  struct grub_fshelp_node rootnode;
  struct grub_fshelp_node *foundnode;

  grub_dl_ref (my_mod);

  data = grub_iso9660_mount (file->device->disk);
  if (!data)
    goto fail;

  rootnode.data = data;
  rootnode.blk = grub_le_to_cpu32 (data->voldesc.rootdir.first_sector);
  rootnode.size = grub_le_to_cpu32 (data->voldesc.rootdir.size);


  if (grub_fshelp_find_file (name, &rootnode,
        &foundnode,
        grub_iso9660_iterate_dir, 0,
        grub_iso9660_read_symlink,
        GRUB_FSHELP_REG))
    goto fail;

  data->first_sector = foundnode->blk;

  file->data = data;
  file->size = foundnode->size;
  file->offset = 0;

  return 0;

 fail:
  grub_dl_unref (my_mod);

  grub_free (data);

  return grub_errno;
}
