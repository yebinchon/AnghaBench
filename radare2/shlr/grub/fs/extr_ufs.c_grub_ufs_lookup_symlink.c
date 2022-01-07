
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int log2_blksz; } ;
struct grub_ufs_data {scalar_t__ linknest; int be; TYPE_1__ sblock; int disk; } ;
typedef scalar_t__ grub_err_t ;


 int GRUB_ERR_SYMLINK_LOOP ;
 int GRUB_UFS_INODE ;
 scalar_t__ GRUB_UFS_MAX_SYMLNK_CNT ;
 scalar_t__ INODE (struct grub_ufs_data*,char*) ;
 int INODE_DIRBLOCKS (struct grub_ufs_data*,int ) ;
 scalar_t__ INODE_NBLOCKS (struct grub_ufs_data*) ;
 size_t INODE_SIZE (struct grub_ufs_data*) ;
 int grub_disk_read (int ,int,int ,size_t,char*) ;
 scalar_t__ grub_errno ;
 scalar_t__ grub_error (scalar_t__,char*,...) ;
 char* grub_malloc (size_t) ;
 int grub_num_to_cpu32 (int ,int ) ;
 int grub_strcpy (char*,char*) ;
 int grub_ufs_find_file (struct grub_ufs_data*,char*) ;
 scalar_t__ grub_ufs_read_inode (struct grub_ufs_data*,int,int ) ;

__attribute__((used)) static grub_err_t
grub_ufs_lookup_symlink (struct grub_ufs_data *data, int ino)
{

  char symlink[INODE_SIZE (data)];



  if (++data->linknest > GRUB_UFS_MAX_SYMLNK_CNT)
    return grub_error (GRUB_ERR_SYMLINK_LOOP, "too deep nesting of symlinks");

  if (INODE_NBLOCKS (data) == 0)
    grub_strcpy (symlink, (char *) INODE (data, symlink));
  else
    {
      grub_disk_read (data->disk,
        (INODE_DIRBLOCKS (data, 0)
         << grub_num_to_cpu32 (data->sblock.log2_blksz,
          data->be)),
        0, INODE_SIZE (data), symlink);
      symlink[INODE_SIZE (data)] = '\0';
    }


  if (symlink[0] == '/')
    ino = GRUB_UFS_INODE;


  if (grub_ufs_read_inode (data, ino, 0))
    return grub_errno;

  grub_ufs_find_file (data, symlink);
  if (grub_errno)
    grub_error (grub_errno, "cannot follow symlink `%s'", symlink);

  return grub_errno;
}
