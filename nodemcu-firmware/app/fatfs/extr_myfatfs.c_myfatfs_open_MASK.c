#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_file ;
struct TYPE_2__ {int /*<<< orphan*/ * fns; int /*<<< orphan*/  fs_type; } ;
struct myvfs_file {TYPE_1__ vfs_file; int /*<<< orphan*/  fp; } ;
typedef  int BYTE ;

/* Variables and functions */
 int const FA_OPEN_ALWAYS ; 
 int /*<<< orphan*/  FR_OK ; 
 int /*<<< orphan*/  VFS_FS_FATFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct myvfs_file*) ; 
 int /*<<< orphan*/  last_result ; 
 struct myvfs_file* FUNC4 (int) ; 
 int /*<<< orphan*/  myfatfs_file_fns ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static vfs_file *FUNC6( const char *name, const char *mode )
{
  struct myvfs_file *fd;
  const BYTE flags = FUNC5( mode );

  if ((fd = FUNC4( sizeof( struct myvfs_file ) ))) {
    if (FR_OK == (last_result = FUNC1( &(fd->fp), name, flags ))) {
      // skip to end of file for append mode
      if (flags & FA_OPEN_ALWAYS)
        FUNC0( &(fd->fp), FUNC2( &(fd->fp) ) );

      fd->vfs_file.fs_type = VFS_FS_FATFS;
      fd->vfs_file.fns     = &myfatfs_file_fns;
      return (vfs_file *)fd;
    } else {
      FUNC3( fd );
    }
  }

  return NULL;
}