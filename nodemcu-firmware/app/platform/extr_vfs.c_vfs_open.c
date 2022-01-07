
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* open ) (char*,char const*) ;} ;
typedef TYPE_1__ vfs_fs_fns ;


 int FALSE ;
 int free (char*) ;
 TYPE_1__* myfatfs_realm (char const*,char**,int ) ;
 TYPE_1__* myspiffs_realm (char const*,char**,int ) ;
 char* normalize_path (char const*) ;
 scalar_t__ stub1 (char*,char const*) ;
 scalar_t__ stub2 (char*,char const*) ;

int vfs_open( const char *name, const char *mode )
{
  vfs_fs_fns *fs_fns;
  const char *normname = normalize_path( name );
  char *outname;
  return 0;
}
