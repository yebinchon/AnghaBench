
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct vfs_stat {int dummy; } ;
struct vfs_dir {int dummy; } ;
typedef int int32_t ;
struct TYPE_4__ {char* fname; } ;
typedef TYPE_1__ FILINFO ;


 int FR_OK ;
 int GET_DIR_DP (struct vfs_dir const*) ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 int dp ;
 int f_readdir (int ,TYPE_1__*) ;
 int last_result ;
 int myfatfs_fill_stat (TYPE_1__*,struct vfs_stat*) ;

__attribute__((used)) static int32_t myfatfs_readdir( const struct vfs_dir *dd, struct vfs_stat *buf )
{
  GET_DIR_DP(dd);
  FILINFO fno;

  if (FR_OK == (last_result = f_readdir( dp, &fno ))) {

    if (fno.fname[0] != '\0') {
      myfatfs_fill_stat( &fno, buf );

      return VFS_RES_OK;
    }
  }

  return VFS_RES_ERR;
}
