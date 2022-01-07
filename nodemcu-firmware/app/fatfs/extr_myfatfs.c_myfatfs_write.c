
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_file {int dummy; } ;
typedef int int32_t ;
typedef int UINT ;


 scalar_t__ FR_OK ;
 int GET_FIL_FP (struct vfs_file const*) ;
 int VFS_RES_ERR ;
 scalar_t__ f_write (int ,void const*,size_t,int *) ;
 int fp ;
 scalar_t__ last_result ;

__attribute__((used)) static int32_t myfatfs_write( const struct vfs_file *fd, const void *ptr, size_t len )
{
  GET_FIL_FP(fd);
  UINT act_written;

  last_result = f_write( fp, ptr, len, &act_written );

  return last_result == FR_OK ? act_written : VFS_RES_ERR;
}
