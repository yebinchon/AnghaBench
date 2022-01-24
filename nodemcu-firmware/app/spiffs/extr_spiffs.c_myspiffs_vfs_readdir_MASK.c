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
struct vfs_stat {char* name; int /*<<< orphan*/  size; } ;
struct vfs_dir {int dummy; } ;
struct spiffs_dirent {int /*<<< orphan*/  size; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  sint32_t ;

/* Variables and functions */
 int FS_OBJ_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct vfs_dir const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct spiffs_dirent*) ; 
 int /*<<< orphan*/  VFS_RES_ERR ; 
 int /*<<< orphan*/  VFS_RES_OK ; 
 int /*<<< orphan*/  d ; 
 int /*<<< orphan*/  FUNC2 (struct vfs_stat*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static sint32_t FUNC4( const struct vfs_dir *dd, struct vfs_stat *buf ) {
  FUNC0(dd);
  struct spiffs_dirent dirent;

  if (FUNC1( d, &dirent )) {
    FUNC2( buf, 0, sizeof( struct vfs_stat ) );

    // copy entries to  item
    // fill in supported stat entries
    FUNC3( buf->name, dirent.name, FS_OBJ_NAME_LEN+1 );
    buf->name[FS_OBJ_NAME_LEN] = '\0';
    buf->size = dirent.size;
    return VFS_RES_OK;
  }

  return VFS_RES_ERR;
}