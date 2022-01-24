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
typedef  size_t uint8 ;
typedef  int /*<<< orphan*/  RD_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ g_bitmap_cache ; 
 scalar_t__ g_bitmap_cache_persist_enable ; 
 int g_pstcache_Bpp ; 
 scalar_t__ g_pstcache_enumerated ; 
 int* g_pstcache_fd ; 
 int g_server_depth ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

RD_BOOL
FUNC7(uint8 cache_id)
{
	int fd;
	char filename[256];

	if (g_pstcache_enumerated)
		return True;

	g_pstcache_fd[cache_id] = 0;

	if (!(g_bitmap_cache && g_bitmap_cache_persist_enable))
		return False;

	if (!FUNC4())
	{
		FUNC0(("failed to get/make cache directory!\n"));
		return False;
	}

	g_pstcache_Bpp = (g_server_depth + 7) / 8;
	FUNC5(filename, "cache/pstcache_%d_%d", cache_id, g_pstcache_Bpp);
	FUNC0(("persistent bitmap cache file: %s\n", filename));

	fd = FUNC3(filename);
	if (fd == -1)
		return False;

	if (!FUNC2(fd, 0, 0))
	{
		FUNC6("Persistent bitmap caching is disabled. (The file is already in use)\n");
		FUNC1(fd);
		return False;
	}

	g_pstcache_fd[cache_id] = fd;
	return True;
}