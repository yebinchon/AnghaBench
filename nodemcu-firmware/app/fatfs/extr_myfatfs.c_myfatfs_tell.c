
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_file {int dummy; } ;
typedef int int32_t ;


 int FR_OK ;
 int GET_FIL_FP (struct vfs_file const*) ;
 int f_tell (int ) ;
 int fp ;
 int last_result ;

__attribute__((used)) static int32_t myfatfs_tell( const struct vfs_file *fd )
{
  GET_FIL_FP(fd);

  last_result = FR_OK;

  return f_tell( fp );
}
