
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_udf_dir_closure {int (* hook ) (char const*,struct grub_dirhook_info const*,void*) ;void* closure; } ;
struct grub_udf_data {int root_icb; } ;
struct grub_fshelp_node {int root_icb; } ;
typedef int grub_err_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_3__ {int disk; } ;


 int GRUB_FSHELP_DIR ;
 int grub_dl_ref (int ) ;
 int grub_dl_unref (int ) ;
 int grub_errno ;
 int grub_free (struct grub_udf_data*) ;
 scalar_t__ grub_fshelp_find_file (char const*,struct grub_udf_data*,struct grub_udf_data**,int (*) (struct grub_udf_data*,int ,struct grub_udf_dir_closure*),int ,int ,int ) ;
 int grub_udf_iterate_dir (struct grub_udf_data*,int ,struct grub_udf_dir_closure*) ;
 struct grub_udf_data* grub_udf_mount (int ) ;
 scalar_t__ grub_udf_read_icb (struct grub_udf_data*,int *,struct grub_udf_data*) ;
 int iterate ;
 int my_mod ;

__attribute__((used)) static grub_err_t
grub_udf_dir (grub_device_t device, const char *path,
       int (*hook) (const char *filename,
      const struct grub_dirhook_info *info,
      void *closure),
       void *closure)
{
  struct grub_udf_data *data = 0;
  struct grub_fshelp_node rootnode;
  struct grub_fshelp_node *foundnode;
  struct grub_udf_dir_closure c;

  grub_dl_ref (my_mod);

  data = grub_udf_mount (device->disk);
  if (!data)
    goto fail;

  if (grub_udf_read_icb (data, &data->root_icb, &rootnode))
    goto fail;

  if (grub_fshelp_find_file (path, &rootnode,
        &foundnode,
        grub_udf_iterate_dir, 0, 0, GRUB_FSHELP_DIR))
    goto fail;

  if (hook) {
    c.hook = hook;
    c.closure = closure;
    grub_udf_iterate_dir (foundnode, iterate, &c);
  }

  if (foundnode != &rootnode)
    grub_free (foundnode);

fail:
  grub_free (data);

  grub_dl_unref (my_mod);

  return grub_errno;
}
