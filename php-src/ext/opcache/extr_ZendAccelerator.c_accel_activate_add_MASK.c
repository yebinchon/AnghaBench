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

/* Variables and functions */
 int /*<<< orphan*/  ACCEL_LOG_DEBUG ; 
 int FAILURE ; 
 int /*<<< orphan*/  F_RDLCK ; 
 int /*<<< orphan*/  F_SETLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int SUCCESS ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct flock*) ; 
 int /*<<< orphan*/  lock_file ; 
 int /*<<< orphan*/  mem_usage ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC6(void)
{
#ifdef ZEND_WIN32
	SHM_UNPROTECT();
	INCREMENT(mem_usage);
	SHM_PROTECT();
#else
	struct flock mem_usage_lock;

	mem_usage_lock.l_type = F_RDLCK;
	mem_usage_lock.l_whence = SEEK_SET;
	mem_usage_lock.l_start = 1;
	mem_usage_lock.l_len = 1;

	if (FUNC3(lock_file, F_SETLK, &mem_usage_lock) == -1) {
		FUNC5(ACCEL_LOG_DEBUG, "UpdateC(+1):  %s (%d)", FUNC4(errno), errno);
		return FAILURE;
	}
#endif
	return SUCCESS;
}