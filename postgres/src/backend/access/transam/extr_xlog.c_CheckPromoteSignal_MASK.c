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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALLBACK_PROMOTE_SIGNAL_FILE ; 
 int /*<<< orphan*/  PROMOTE_SIGNAL_FILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct stat*) ; 

bool
FUNC1(void)
{
	struct stat stat_buf;

	if (FUNC0(PROMOTE_SIGNAL_FILE, &stat_buf) == 0 ||
		FUNC0(FALLBACK_PROMOTE_SIGNAL_FILE, &stat_buf) == 0)
		return true;

	return false;
}