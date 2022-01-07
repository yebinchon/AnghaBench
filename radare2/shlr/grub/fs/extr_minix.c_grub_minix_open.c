
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct grub_minix_data {int dummy; } ;
struct grub_file {int size; struct grub_minix_data* data; TYPE_1__* device; } ;
typedef scalar_t__ grub_err_t ;
struct TYPE_2__ {int disk; } ;


 int GRUB_ERR_BAD_FILENAME ;
 scalar_t__ GRUB_ERR_NONE ;
 int GRUB_MINIX_INODE_SIZE (struct grub_minix_data*) ;
 int GRUB_MINIX_ROOT_INODE ;
 scalar_t__ grub_errno ;
 int grub_error (int ,char*) ;
 int grub_free (struct grub_minix_data*) ;
 int grub_minix_find_file (struct grub_minix_data*,char const*) ;
 struct grub_minix_data* grub_minix_mount (int ) ;
 int grub_minix_read_inode (struct grub_minix_data*,int ) ;

__attribute__((used)) static grub_err_t
grub_minix_open (struct grub_file *file, const char *name)
{
  struct grub_minix_data *data;
  data = grub_minix_mount (file->device->disk);
  if (!data)
    return grub_errno;


  grub_minix_read_inode (data, GRUB_MINIX_ROOT_INODE);
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



  grub_minix_find_file (data, name);
  if (grub_errno)
    {
      grub_free (data);
      return grub_errno;
    }

  file->data = data;
  file->size = GRUB_MINIX_INODE_SIZE (data);

  return GRUB_ERR_NONE;
}
