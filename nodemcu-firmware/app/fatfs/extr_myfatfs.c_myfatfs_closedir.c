
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_dir {int dummy; } ;
typedef int int32_t ;


 scalar_t__ FR_OK ;
 int GET_DIR_DP (struct vfs_dir const*) ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 int dp ;
 scalar_t__ f_closedir (int ) ;
 int free (void*) ;
 scalar_t__ last_result ;

__attribute__((used)) static int32_t myfatfs_closedir( const struct vfs_dir *dd )
{
  GET_DIR_DP(dd);

  last_result = f_closedir( dp );


  free( (void *)dd );

  return last_result == FR_OK ? VFS_RES_OK : VFS_RES_ERR;
}
