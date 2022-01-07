
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_file {int dummy; } ;
typedef int sint32_t ;


 int GET_FILE_FH (struct vfs_file const*) ;
 scalar_t__ SPIFFS_fflush (int *,int ) ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 int fh ;
 int fs ;

__attribute__((used)) static sint32_t myspiffs_vfs_flush( const struct vfs_file *fd ) {
  GET_FILE_FH(fd);

  return SPIFFS_fflush( &fs, fh ) >= 0 ? VFS_RES_OK : VFS_RES_ERR;
}
