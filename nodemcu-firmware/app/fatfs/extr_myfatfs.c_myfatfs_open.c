
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_file ;
struct TYPE_2__ {int * fns; int fs_type; } ;
struct myvfs_file {TYPE_1__ vfs_file; int fp; } ;
typedef int BYTE ;


 int const FA_OPEN_ALWAYS ;
 int FR_OK ;
 int VFS_FS_FATFS ;
 int f_lseek (int *,int ) ;
 int f_open (int *,char const*,int const) ;
 int f_size (int *) ;
 int free (struct myvfs_file*) ;
 int last_result ;
 struct myvfs_file* malloc (int) ;
 int myfatfs_file_fns ;
 int myfatfs_mode2flag (char const*) ;

__attribute__((used)) static vfs_file *myfatfs_open( const char *name, const char *mode )
{
  struct myvfs_file *fd;
  const BYTE flags = myfatfs_mode2flag( mode );

  if (fd = malloc( sizeof( struct myvfs_file ) )) {
    if (FR_OK == (last_result = f_open( &(fd->fp), name, flags ))) {

      if (flags & FA_OPEN_ALWAYS)
        f_lseek( &(fd->fp), f_size( &(fd->fp) ) );

      fd->vfs_file.fs_type = VFS_FS_FATFS;
      fd->vfs_file.fns = &myfatfs_file_fns;
      return (vfs_file *)fd;
    } else {
      free( fd );
    }
  }

  return ((void*)0);
}
