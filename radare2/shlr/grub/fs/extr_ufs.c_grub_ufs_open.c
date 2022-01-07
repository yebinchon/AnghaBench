
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_ufs_data {int dummy; } ;
struct grub_file {int size; struct grub_ufs_data* data; TYPE_1__* device; } ;
typedef scalar_t__ grub_err_t ;
struct TYPE_2__ {int disk; } ;


 int GRUB_ERR_BAD_FILENAME ;
 scalar_t__ GRUB_ERR_NONE ;
 int INODE_SIZE (struct grub_ufs_data*) ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_ufs_data*) ;
 int grub_ufs_find_file (struct grub_ufs_data*,char const*) ;
 struct grub_ufs_data* grub_ufs_mount (int ) ;
 int grub_ufs_read_inode (struct grub_ufs_data*,int,int ) ;

__attribute__((used)) static grub_err_t
grub_ufs_open (struct grub_file *file, const char *name)
{
  struct grub_ufs_data *data;
  data = grub_ufs_mount (file->device->disk);
  if (!data)
    return grub_errno;

  grub_ufs_read_inode (data, 2, 0);
  if (grub_errno)
    {
      grub_free (data);
      return grub_errno;
    }

  if (!name || name[0] != '/')
    {
      grub_error (GRUB_ERR_BAD_FILENAME, "bad filename");
      return grub_errno;
    }

  grub_ufs_find_file (data, name);
  if (grub_errno)
    {
      grub_free (data);
      return grub_errno;
    }

  file->data = data;
  file->size = INODE_SIZE (data);

  return GRUB_ERR_NONE;
}
