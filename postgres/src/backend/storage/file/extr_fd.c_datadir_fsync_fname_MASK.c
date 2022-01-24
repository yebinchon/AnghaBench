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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,int,int) ; 

__attribute__((used)) static void
FUNC1(const char *fname, bool isdir, int elevel)
{
	/*
	 * We want to silently ignoring errors about unreadable files.  Pass that
	 * desire on to fsync_fname_ext().
	 */
	FUNC0(fname, isdir, true, elevel);
}