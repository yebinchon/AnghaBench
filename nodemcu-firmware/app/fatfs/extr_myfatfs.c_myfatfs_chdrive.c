
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 scalar_t__ FR_OK ;
 int VFS_RES_ERR ;
 int VFS_RES_OK ;
 scalar_t__ f_chdrive (char const*) ;
 scalar_t__ last_result ;

__attribute__((used)) static int32_t myfatfs_chdrive( const char *name )
{
  last_result = f_chdrive( name );

  return last_result == FR_OK ? VFS_RES_OK : VFS_RES_ERR;
}
