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
typedef  scalar_t__ sint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vfs_file const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,size_t) ; 
 scalar_t__ VFS_RES_ERR ; 
 int /*<<< orphan*/  fh ; 
 int /*<<< orphan*/  fs ; 

__attribute__((used)) static sint32_t FUNC2( const struct vfs_file *fd, const void *ptr, size_t len ) {
  FUNC0(fd);

  sint32_t n = FUNC1( &fs, fh, (void *)ptr, len );

  return n >= 0 ? n : VFS_RES_ERR;
}