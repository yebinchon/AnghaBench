
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vfs_file {int dummy; } ;


 int FR_OK ;
 int GET_FIL_FP (struct vfs_file const*) ;
 int f_size (int ) ;
 int fp ;
 int last_result ;

__attribute__((used)) static uint32_t myfatfs_fsize( const struct vfs_file *fd )
{
  GET_FIL_FP(fd);

  last_result = FR_OK;

  return f_size( fp );
}
