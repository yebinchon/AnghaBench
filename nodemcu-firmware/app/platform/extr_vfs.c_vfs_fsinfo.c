
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* fsinfo ) (int *,int *) ;} ;
typedef TYPE_1__ vfs_fs_fns ;
typedef int uint32_t ;
typedef int int32_t ;


 int FALSE ;
 int VFS_RES_ERR ;
 int free (char*) ;
 TYPE_1__* myfatfs_realm (char const*,char**,int ) ;
 TYPE_1__* myspiffs_realm (char const*,char**,int ) ;
 char* normalize_path (char const*) ;
 int stub1 (int *,int *) ;
 int stub2 (int *,int *) ;

int32_t vfs_fsinfo( const char *name, uint32_t *total, uint32_t *used )
{
  vfs_fs_fns *fs_fns;
  char *outname;

  if (!name) name = "";

  const char *normname = normalize_path( name );
  return VFS_RES_ERR;
}
