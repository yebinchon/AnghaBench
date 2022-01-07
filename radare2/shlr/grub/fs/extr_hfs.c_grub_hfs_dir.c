
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_hfs_filerec {scalar_t__ type; int member_0; } ;
struct grub_hfs_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info const*,void*) ;void* closure; } ;
struct grub_hfs_data {int cat_root; } ;
typedef int grub_err_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_3__ {int disk; } ;


 int GRUB_ERR_BAD_FILE_TYPE ;
 scalar_t__ GRUB_HFS_FILETYPE_DIR ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_hfs_data*) ;
 int grub_hfs_dir_hook ;
 scalar_t__ grub_hfs_find_dir (struct grub_hfs_data*,char const*,struct grub_hfs_filerec*,int*) ;
 int grub_hfs_iterate_dir (struct grub_hfs_data*,int ,int,int ,struct grub_hfs_dir_closure*) ;
 struct grub_hfs_data* grub_hfs_mount (int ) ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_hfs_dir (grub_device_t device, const char *path,
       int (*hook) (const char *filename,
      const struct grub_dirhook_info *info, void *closure),
       void *closure)
{
  int inode;
  struct grub_hfs_data *data;
  struct grub_hfs_filerec frec = {0};
  struct grub_hfs_dir_closure c;

  grub_dl_ref (my_mod);

  data = grub_hfs_mount (device->disk);
  if (!data)
    goto fail;


  if (grub_hfs_find_dir (data, path, &frec, &inode))
    goto fail;

  if (frec.type != GRUB_HFS_FILETYPE_DIR)
    {
      grub_error (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
      goto fail;
    }

  c.hook = hook;
  c.closure = closure;
  grub_hfs_iterate_dir (data, data->cat_root, inode, grub_hfs_dir_hook, &c);

 fail:
  grub_free (data);

  grub_dl_unref (my_mod);

  return grub_errno;
}
