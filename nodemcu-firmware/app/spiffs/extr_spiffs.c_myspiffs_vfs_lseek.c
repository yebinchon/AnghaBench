
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_file {int dummy; } ;
typedef scalar_t__ sint32_t ;


 int GET_FILE_FH (struct vfs_file const*) ;
 int SPIFFS_SEEK_CUR ;
 int SPIFFS_SEEK_END ;
 int SPIFFS_SEEK_SET ;
 scalar_t__ SPIFFS_lseek (int *,int ,scalar_t__,int) ;
 scalar_t__ VFS_RES_ERR ;



 int fh ;
 int fs ;

__attribute__((used)) static sint32_t myspiffs_vfs_lseek( const struct vfs_file *fd, sint32_t off, int whence ) {
  GET_FILE_FH(fd);
  int spiffs_whence;

  switch (whence) {
  default:
  case 128:
    spiffs_whence = SPIFFS_SEEK_SET;
    break;
  case 130:
    spiffs_whence = SPIFFS_SEEK_CUR;
    break;
  case 129:
    spiffs_whence = SPIFFS_SEEK_END;
    break;
  }

  sint32_t res = SPIFFS_lseek( &fs, fh, off, spiffs_whence );
  return res >= 0 ? res : VFS_RES_ERR;
}
