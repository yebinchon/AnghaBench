
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vfs_vol ;
struct TYPE_4__ {int * (* mount ) (char*,int) ;} ;
typedef TYPE_1__ vfs_fs_fns ;


 int FALSE ;
 int free (char*) ;
 TYPE_1__* myfatfs_realm (char const*,char**,int ) ;
 TYPE_1__* myspiffs_realm (char const*,char**,int ) ;
 char* normalize_path (char const*) ;
 int * stub1 (char*,int) ;
 int * stub2 (char*,int) ;

vfs_vol *vfs_mount( const char *name, int num )
{
  vfs_fs_fns *fs_fns;
  const char *normname = normalize_path( name );
  char *outname;
  return ((void*)0);
}
