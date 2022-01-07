
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ offset_type; } ;
struct TYPE_6__ {TYPE_1__ v2; } ;
struct grub_reiserfs_key {TYPE_2__ u; void* object_id; void* directory_id; } ;
struct grub_reiserfs_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info const*,void*) ;void* closure; } ;
struct grub_reiserfs_data {int dummy; } ;
struct grub_fshelp_node {scalar_t__ block_number; } ;
typedef scalar_t__ grub_err_t ;
typedef TYPE_3__* grub_device_t ;
struct TYPE_7__ {int disk; } ;


 int GRUB_ERR_BAD_FS ;
 scalar_t__ GRUB_ERR_NONE ;
 int GRUB_FSHELP_DIR ;
 int GRUB_REISERFS_DIRECTORY ;
 void* grub_cpu_to_le32 (int) ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_reiserfs_data*) ;
 int grub_fshelp_find_file (char const*,struct grub_fshelp_node*,struct grub_fshelp_node**,int (*) (struct grub_fshelp_node*,int ,struct grub_reiserfs_dir_closure*),int ,int ,int ) ;
 scalar_t__ grub_reiserfs_get_item (struct grub_reiserfs_data*,struct grub_reiserfs_key*,struct grub_fshelp_node*) ;
 int grub_reiserfs_iterate_dir (struct grub_fshelp_node*,int ,struct grub_reiserfs_dir_closure*) ;
 struct grub_reiserfs_data* grub_reiserfs_mount (int ) ;
 int grub_reiserfs_read_symlink ;
 int grub_reiserfs_set_key_offset (struct grub_reiserfs_key*,int) ;
 int grub_reiserfs_set_key_type (struct grub_reiserfs_key*,int ,int) ;
 int iterate ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_reiserfs_dir (grub_device_t device, const char *path,
                   int (*hook) (const char *filename,
    const struct grub_dirhook_info *info,
    void *closure),
     void *closure)
{
  struct grub_reiserfs_data *data = 0;
  struct grub_fshelp_node root, *found;
  struct grub_reiserfs_key root_key;
  struct grub_reiserfs_dir_closure c;

  grub_dl_ref (my_mod);
  data = grub_reiserfs_mount (device->disk);
  if (! data)
    goto fail;
  root_key.directory_id = grub_cpu_to_le32 (1);
  root_key.object_id = grub_cpu_to_le32 (2);
  root_key.u.v2.offset_type = 0;
  grub_reiserfs_set_key_type (&root_key, GRUB_REISERFS_DIRECTORY, 2);
  grub_reiserfs_set_key_offset (&root_key, 1);
  if (grub_reiserfs_get_item (data, &root_key, &root) != GRUB_ERR_NONE)
    goto fail;
  if (root.block_number == 0)
    {
      grub_error(GRUB_ERR_BAD_FS, "root not found");
      goto fail;
    }
  grub_fshelp_find_file (path, &root, &found, grub_reiserfs_iterate_dir, 0,
                         grub_reiserfs_read_symlink, GRUB_FSHELP_DIR);
  if (grub_errno)
    goto fail;
  c.hook = hook;
  c.closure = closure;
  grub_reiserfs_iterate_dir (found, iterate, &c);
  grub_free (data);
  grub_dl_unref (my_mod);
  return GRUB_ERR_NONE;

 fail:
  grub_free (data);
  grub_dl_unref (my_mod);
  return grub_errno;
}
