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
struct fuse_file_info {int /*<<< orphan*/  fh; } ;
typedef  int off_t ;

/* Variables and functions */
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(const char *path, off_t length,
                          struct fuse_file_info *info)
{
  int ret = FUNC0(info->fh, length * 2);
  return ret == -1 ? -errno : ret;
}