#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vfs_stat {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  FILINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FR_OK ; 
 int /*<<< orphan*/  VFS_RES_ERR ; 
 int /*<<< orphan*/  VFS_RES_OK ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  last_result ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct vfs_stat*) ; 

__attribute__((used)) static int32_t FUNC2( const char *name, struct vfs_stat *buf )
{
  FILINFO fno;

  if (FR_OK == (last_result = FUNC0( name, &fno ))) {
    FUNC1( &fno, buf );

    return VFS_RES_OK;
  } else {
    return VFS_RES_ERR;
  }
}