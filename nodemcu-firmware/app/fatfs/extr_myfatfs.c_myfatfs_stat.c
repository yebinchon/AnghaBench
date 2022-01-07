
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_stat {int dummy; } ;
typedef int int32_t ;
typedef int FILINFO ;


 int FR_OK ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 int f_stat (char const*,int *) ;
 int last_result ;
 int myfatfs_fill_stat (int *,struct vfs_stat*) ;

__attribute__((used)) static int32_t myfatfs_stat( const char *name, struct vfs_stat *buf )
{
  FILINFO fno;

  if (FR_OK == (last_result = f_stat( name, &fno ))) {
    myfatfs_fill_stat( &fno, buf );

    return VFS_RES_OK;
  } else {
    return VFS_RES_ERR;
  }
}
