
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* remove ) (char*) ;} ;
typedef TYPE_1__ vfs_fs_fns ;
typedef int int32_t ;


 int FALSE ;
 int VFS_RES_ERR ;
 int free (char*) ;
 TYPE_1__* myfatfs_realm (char const*,char**,int ) ;
 TYPE_1__* myspiffs_realm (char const*,char**,int ) ;
 char* normalize_path (char const*) ;
 int stub1 (char*) ;
 int stub2 (char*) ;

int32_t vfs_remove( const char *name )
{
  vfs_fs_fns *fs_fns;
  const char *normname = normalize_path( name );
  char *outname;
  return VFS_RES_ERR;
}
