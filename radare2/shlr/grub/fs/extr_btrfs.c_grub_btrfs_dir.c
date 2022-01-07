
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct grub_btrfs_data {int dummy; } ;
typedef scalar_t__ grub_err_t ;
typedef TYPE_1__* grub_device_t ;
struct TYPE_3__ {int disk; } ;


 scalar_t__ GRUB_ERR_NONE ;
 struct grub_btrfs_data* grub_btrfs_mount (int ) ;
 scalar_t__ grub_errno ;
 int grub_free (struct grub_btrfs_data*) ;

__attribute__((used)) static grub_err_t
grub_btrfs_dir (grub_device_t device,
                const char *path ,
                int (*hook) (const char *filename,
                             const struct grub_dirhook_info *info))
{
  struct grub_btrfs_data *data = grub_btrfs_mount (device->disk);
  if (grub_errno)
    return grub_errno;

  grub_free (data);

  return GRUB_ERR_NONE;
}
