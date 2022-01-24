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
typedef  int /*<<< orphan*/  vfs_dir ;
struct TYPE_2__ {int /*<<< orphan*/ * fns; int /*<<< orphan*/  fs_type; } ;
struct myvfs_dir {TYPE_1__ vfs_dir; int /*<<< orphan*/  dp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FR_OK ; 
 int /*<<< orphan*/  VFS_FS_FATFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct myvfs_dir*) ; 
 int /*<<< orphan*/  last_result ; 
 struct myvfs_dir* FUNC2 (int) ; 
 int /*<<< orphan*/  myfatfs_dir_fns ; 

__attribute__((used)) static vfs_dir *FUNC3( const char *name )
{
  struct myvfs_dir *dd;

  if ((dd = FUNC2( sizeof( struct myvfs_dir ) ))) {
    if (FR_OK == (last_result = FUNC0( &(dd->dp), name ))) {
      dd->vfs_dir.fs_type = VFS_FS_FATFS;
      dd->vfs_dir.fns     = &myfatfs_dir_fns;
      return (vfs_dir *)dd;
    } else {
      FUNC1( dd );
    }
  }

  return NULL;
}