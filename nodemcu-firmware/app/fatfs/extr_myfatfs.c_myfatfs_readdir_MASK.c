#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfs_stat {int dummy; } ;
struct vfs_dir {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_4__ {char* fname; } ;
typedef  TYPE_1__ FILINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FR_OK ; 
 int /*<<< orphan*/  FUNC0 (struct vfs_dir const*) ; 
 int /*<<< orphan*/  VFS_RES_ERR ; 
 int /*<<< orphan*/  VFS_RES_OK ; 
 int /*<<< orphan*/  dp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  last_result ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct vfs_stat*) ; 

__attribute__((used)) static int32_t FUNC3( const struct vfs_dir *dd, struct vfs_stat *buf )
{
  FUNC0(dd);
  FILINFO fno;

  if (FR_OK == (last_result = FUNC1( dp, &fno ))) {
    // condition "no further item" is signalled with empty name
    if (fno.fname[0] != '\0') {
      FUNC2( &fno, buf );

      return VFS_RES_OK;
    }
  }

  return VFS_RES_ERR;
}