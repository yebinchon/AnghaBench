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
typedef  int /*<<< orphan*/  sqlite3_vfs ;
typedef  scalar_t__ sint32_t ;

/* Variables and functions */
 int SQLITE_IOERR_DELETE ; 
 int SQLITE_OK ; 
 scalar_t__ VFS_RES_ERR ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2( sqlite3_vfs * vfs, const char * path, int syncDir )
{
	sint32_t rc = FUNC1( path );
	if (rc == VFS_RES_ERR)
		return SQLITE_IOERR_DELETE;

	FUNC0("esp8266_Delete: %s OK\n", path);
	return SQLITE_OK;
}