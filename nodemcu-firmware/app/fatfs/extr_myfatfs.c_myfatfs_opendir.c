
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_dir ;
struct TYPE_2__ {int * fns; int fs_type; } ;
struct myvfs_dir {TYPE_1__ vfs_dir; int dp; } ;


 int FR_OK ;
 int VFS_FS_FATFS ;
 int f_opendir (int *,char const*) ;
 int free (struct myvfs_dir*) ;
 int last_result ;
 struct myvfs_dir* malloc (int) ;
 int myfatfs_dir_fns ;

__attribute__((used)) static vfs_dir *myfatfs_opendir( const char *name )
{
  struct myvfs_dir *dd;

  if (dd = malloc( sizeof( struct myvfs_dir ) )) {
    if (FR_OK == (last_result = f_opendir( &(dd->dp), name ))) {
      dd->vfs_dir.fs_type = VFS_FS_FATFS;
      dd->vfs_dir.fns = &myfatfs_dir_fns;
      return (vfs_dir *)dd;
    } else {
      free( dd );
    }
  }

  return ((void*)0);
}
