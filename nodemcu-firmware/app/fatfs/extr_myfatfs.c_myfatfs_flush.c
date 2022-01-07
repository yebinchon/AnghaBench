
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_file {int dummy; } ;
typedef int int32_t ;


 scalar_t__ FR_OK ;
 int GET_FIL_FP (struct vfs_file const*) ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 scalar_t__ f_sync (int ) ;
 int fp ;
 scalar_t__ last_result ;

__attribute__((used)) static int32_t myfatfs_flush( const struct vfs_file *fd )
{
  GET_FIL_FP(fd);

  last_result = f_sync( fp );

  return last_result == FR_OK ? VFS_RES_OK : VFS_RES_ERR;
}
