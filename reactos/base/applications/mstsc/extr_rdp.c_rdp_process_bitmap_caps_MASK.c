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
typedef  scalar_t__ uint16 ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ g_height ; 
 scalar_t__ g_server_depth ; 
 scalar_t__ g_width ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__,...) ; 

__attribute__((used)) static void
FUNC5(STREAM s)
{
	uint16 width, height, depth;

	FUNC1(s, depth);
	FUNC2(s, 6);

	FUNC1(s, width);
	FUNC1(s, height);

	FUNC0(("setting desktop size and depth to: %dx%dx%d\n", width, height, depth));

	/*
	 * The server may limit depth and change the size of the desktop (for
	 * example when shadowing another session).
	 */
	if (g_server_depth != depth)
	{
		FUNC4("Remote desktop does not support colour depth %d; falling back to %d\n",
			g_server_depth, depth);
		g_server_depth = depth;
	}
	if (g_width != width || g_height != height)
	{
		FUNC4("Remote desktop changed from %dx%d to %dx%d.\n", g_width, g_height,
			width, height);
		g_width = width;
		g_height = height;
		FUNC3();
	}
}