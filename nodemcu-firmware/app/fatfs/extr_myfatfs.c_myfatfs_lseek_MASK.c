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
typedef  int /*<<< orphan*/  FSIZE_t ;

/* Variables and functions */
 scalar_t__ FR_OK ; 
 int /*<<< orphan*/  FUNC0 (struct vfs_file const*) ; 
 int /*<<< orphan*/  VFS_RES_ERR ; 
#define  VFS_SEEK_CUR 130 
#define  VFS_SEEK_END 129 
#define  VFS_SEEK_SET 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fp ; 
 scalar_t__ last_result ; 

__attribute__((used)) static int32_t FUNC4( const struct vfs_file *fd, int32_t off, int whence )
{
  FUNC0(fd);
  FSIZE_t new_pos;

  switch (whence) {
  default:
  case VFS_SEEK_SET:
    new_pos = off > 0 ? off : 0;
    break;
  case VFS_SEEK_CUR:
    new_pos = FUNC3( fp );
    new_pos += off;
    break;
  case VFS_SEEK_END:
    new_pos = FUNC2( fp );
    new_pos += off < 0 ? off : 0;
    break;
  };

  last_result = FUNC1( fp, new_pos );
  new_pos = FUNC3( fp );

  return last_result == FR_OK ? new_pos : VFS_RES_ERR;
}