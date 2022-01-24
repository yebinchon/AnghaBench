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
struct fuse_file_info {scalar_t__ fh; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int errno ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(const char *path, int datasync,
                         struct fuse_file_info *info)
{
  int fd = FUNC0((DIR *)info->fh);
  if (fd == -1) {
    return -errno;
  }

  int ret = datasync ? FUNC1(fd) : FUNC2(fd);
  return ret == -1 ? -errno : ret;
}