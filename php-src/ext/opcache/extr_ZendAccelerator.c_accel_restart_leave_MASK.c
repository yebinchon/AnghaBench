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
struct flock {int l_start; int l_len; int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; } ;
typedef  int /*<<< orphan*/  ZCSG ;

/* Variables and functions */
 int /*<<< orphan*/  ACCEL_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  F_UNLCK ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*) ; 
 int /*<<< orphan*/  lock_file ; 
 int /*<<< orphan*/  restart_in ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(void)
{
#ifdef ZEND_WIN32
	ZCSG(restart_in_progress) = 0;
	DECREMENT(restart_in);
#else
	struct flock restart_finished;

	restart_finished.l_type = F_UNLCK;
	restart_finished.l_whence = SEEK_SET;
	restart_finished.l_start = 2;
	restart_finished.l_len = 1;

	ZCSG(restart_in_progress) = 0;
	if (FUNC1(lock_file, F_SETLK, &restart_finished) == -1) {
		FUNC3(ACCEL_LOG_DEBUG, "RestartC(-1):  %s (%d)", FUNC2(errno), errno);
	}
#endif
}