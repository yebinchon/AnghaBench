
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ path; } ;
struct TYPE_4__ {TYPE_1__ symlink; int size; } ;
struct grub_jfs_data {scalar_t__ linknest; TYPE_2__ currinode; } ;
typedef scalar_t__ grub_err_t ;


 int GRUB_ERR_SYMLINK_LOOP ;
 scalar_t__ GRUB_JFS_MAX_SYMLNK_CNT ;
 scalar_t__ grub_errno ;
 scalar_t__ grub_error (scalar_t__,char*,...) ;
 int grub_jfs_find_file (struct grub_jfs_data*,char*) ;
 scalar_t__ grub_jfs_read_file (struct grub_jfs_data*,int ,int ,int ,int,char*) ;
 scalar_t__ grub_jfs_read_inode (struct grub_jfs_data*,int,TYPE_2__*) ;
 int grub_le_to_cpu64 (int ) ;
 char* grub_malloc (int) ;
 int grub_strncpy (char*,char*,int) ;

__attribute__((used)) static grub_err_t
grub_jfs_lookup_symlink (struct grub_jfs_data *data, int ino)
{
  int size = grub_le_to_cpu64 (data->currinode.size);

  char symlink[size + 1];



  if (++data->linknest > GRUB_JFS_MAX_SYMLNK_CNT)
    return grub_error (GRUB_ERR_SYMLINK_LOOP, "too deep nesting of symlinks");

  if (size <= 128)
    grub_strncpy (symlink, (char *) (data->currinode.symlink.path), 128);
  else if (grub_jfs_read_file (data, 0, 0, 0, size, symlink) < 0)
    return grub_errno;

  symlink[size] = '\0';


  if (symlink[0] == '/')
    ino = 2;


  if (grub_jfs_read_inode (data, ino, &data->currinode))
    return grub_errno;

  grub_jfs_find_file (data, symlink);
  if (grub_errno)
    grub_error (grub_errno, "cannot follow symlink `%s'", symlink);

  return grub_errno;
}
