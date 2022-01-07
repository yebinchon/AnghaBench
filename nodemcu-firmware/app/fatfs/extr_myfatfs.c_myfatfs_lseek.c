
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_file {int dummy; } ;
typedef int int32_t ;
typedef int FSIZE_t ;


 scalar_t__ FR_OK ;
 int GET_FIL_FP (struct vfs_file const*) ;
 int VFS_RES_ERR ;



 scalar_t__ f_lseek (int ,int ) ;
 int f_size (int ) ;
 int f_tell (int ) ;
 int fp ;
 scalar_t__ last_result ;

__attribute__((used)) static int32_t myfatfs_lseek( const struct vfs_file *fd, int32_t off, int whence )
{
  GET_FIL_FP(fd);
  FSIZE_t new_pos;

  switch (whence) {
  default:
  case 128:
    new_pos = off > 0 ? off : 0;
    break;
  case 130:
    new_pos = f_tell( fp );
    new_pos += off;
    break;
  case 129:
    new_pos = f_size( fp );
    new_pos += off < 0 ? off : 0;
    break;
  };

  last_result = f_lseek( fp, new_pos );
  new_pos = f_tell( fp );

  return last_result == FR_OK ? new_pos : VFS_RES_ERR;
}
