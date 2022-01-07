
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_dir ;
struct TYPE_2__ {int * fns; int fs_type; } ;
struct myvfs_dir {TYPE_1__ vfs_dir; int d; } ;


 scalar_t__ SPIFFS_opendir (int *,char const*,int *) ;
 int VFS_FS_SPIFFS ;
 int free (struct myvfs_dir*) ;
 int fs ;
 scalar_t__ malloc (int) ;
 int myspiffs_dd_fns ;

__attribute__((used)) static vfs_dir *myspiffs_vfs_opendir( const char *name ){
  struct myvfs_dir *dd;

  if (dd = (struct myvfs_dir *)malloc( sizeof( struct myvfs_dir ) )) {
    if (SPIFFS_opendir( &fs, name, &(dd->d) )) {
      dd->vfs_dir.fs_type = VFS_FS_SPIFFS;
      dd->vfs_dir.fns = &myspiffs_dd_fns;
      return (vfs_dir *)dd;
    } else {
      free( dd );
    }
  }

  return ((void*)0);
}
