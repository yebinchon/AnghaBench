
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_file ;
struct TYPE_2__ {int * fns; int fs_type; } ;
struct myvfs_file {TYPE_1__ vfs_file; int fh; } ;


 int SPIFFS_open (int *,char const*,int,int ) ;
 int VFS_FS_SPIFFS ;
 int free (struct myvfs_file*) ;
 int fs ;
 int fs_mode2flag (char const*) ;
 scalar_t__ malloc (int) ;
 int myspiffs_file_fns ;

__attribute__((used)) static vfs_file *myspiffs_vfs_open( const char *name, const char *mode ) {
  struct myvfs_file *fd;
  int flags = fs_mode2flag( mode );

  if (fd = (struct myvfs_file *)malloc( sizeof( struct myvfs_file ) )) {
    if (0 < (fd->fh = SPIFFS_open( &fs, name, flags, 0 ))) {
      fd->vfs_file.fs_type = VFS_FS_SPIFFS;
      fd->vfs_file.fns = &myspiffs_file_fns;
      return (vfs_file *)fd;
    } else {
      free( fd );
    }
  }

  return ((void*)0);
}
