
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_file {int dummy; } ;
typedef scalar_t__ sint32_t ;


 int GET_FILE_FH (struct vfs_file const*) ;
 scalar_t__ SPIFFS_read (int *,int ,void*,size_t) ;
 scalar_t__ VFS_RES_ERR ;
 int fh ;
 int fs ;

__attribute__((used)) static sint32_t myspiffs_vfs_read( const struct vfs_file *fd, void *ptr, size_t len ) {
  GET_FILE_FH(fd);

  sint32_t n = SPIFFS_read( &fs, fh, ptr, len );

  return n >= 0 ? n : VFS_RES_ERR;
}
