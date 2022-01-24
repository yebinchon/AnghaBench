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
struct flock {scalar_t__ l_len; scalar_t__ l_start; int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEL_LOG_DEBUG ; 
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*) ; 
 int /*<<< orphan*/  lock_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(void)
{
#ifdef ZEND_WIN32
	accel_deactivate_sub();
#else
	struct flock mem_usage_unlock_all;

	mem_usage_unlock_all.l_type = F_UNLCK;
	mem_usage_unlock_all.l_whence = SEEK_SET;
	mem_usage_unlock_all.l_start = 0;
	mem_usage_unlock_all.l_len = 0;

	if (FUNC1(lock_file, F_SETLK, &mem_usage_unlock_all) == -1) {
		FUNC3(ACCEL_LOG_DEBUG, "UnlockAll:  %s (%d)", FUNC2(errno), errno);
	}
#endif
}