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
struct vfs_stat {char const* name; } ;
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  scalar_t__ sint32_t ;

/* Variables and functions */
 int SQLITE_OK ; 
 scalar_t__ VFS_RES_OK ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 scalar_t__ FUNC2 (char const*,struct vfs_stat*) ; 

__attribute__((used)) static int FUNC3( sqlite3_vfs * vfs, const char * path, int len, char * fullpath )
{
	struct vfs_stat st;
	sint32_t rc = FUNC2( path, &st );
	if ( rc == VFS_RES_OK ){
		FUNC1( fullpath, st.name, len );
	} else {
		FUNC1( fullpath, path, len );
	}

	fullpath[ len - 1 ] = '\0';

	FUNC0("esp8266_FullPathname: %s\n", fullpath);
	return SQLITE_OK;
}