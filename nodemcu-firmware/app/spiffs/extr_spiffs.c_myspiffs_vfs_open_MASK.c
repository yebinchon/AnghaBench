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
struct myvfs_file {TYPE_1__ vfs_file; int /*<<< orphan*/  fh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFS_FS_SPIFFS ; 
 int /*<<< orphan*/  FUNC1 (struct myvfs_file*) ; 
 int /*<<< orphan*/  fs ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  myspiffs_file_fns ; 

__attribute__((used)) static vfs_file *FUNC4( const char *name, const char *mode ) {
  struct myvfs_file *fd;
  int flags = FUNC2( mode );

  if ((fd = (struct myvfs_file *)FUNC3( sizeof( struct myvfs_file ) ))) {
    if (0 < (fd->fh = FUNC0( &fs, name, flags, 0 ))) {
      fd->vfs_file.fs_type = VFS_FS_SPIFFS;
      fd->vfs_file.fns     = &myspiffs_file_fns;
      return (vfs_file *)fd;
    } else {
      FUNC1( fd );
    }
  }

  return NULL;
}