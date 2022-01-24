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
struct vfs_file {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC0 (struct vfs_file const*) ; 
 int /*<<< orphan*/  VFS_RES_ERR ; 
 int /*<<< orphan*/  VFS_RES_OK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fp ; 
 scalar_t__ last_result ; 

__attribute__((used)) static int32_t FUNC2( const struct vfs_file *fd )
{
  FUNC0(fd);

  last_result = FUNC1( fp );

  return last_result == FR_OK ? VFS_RES_OK : VFS_RES_ERR;
}