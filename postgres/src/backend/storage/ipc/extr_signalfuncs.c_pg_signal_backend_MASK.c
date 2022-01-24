#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  roleId; } ;
typedef  TYPE_1__ PGPROC ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  DEFAULT_ROLE_SIGNAL_BACKENDID ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int SIGNAL_BACKEND_ERROR ; 
 int SIGNAL_BACKEND_NOPERMISSION ; 
 int SIGNAL_BACKEND_NOSUPERUSER ; 
 int SIGNAL_BACKEND_SUCCESS ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(int pid, int sig)
{
	PGPROC	   *proc = FUNC0(pid);

	/*
	 * BackendPidGetProc returns NULL if the pid isn't valid; but by the time
	 * we reach kill(), a process for which we get a valid proc here might
	 * have terminated on its own.  There's no way to acquire a lock on an
	 * arbitrary process to prevent that. But since so far all the callers of
	 * this mechanism involve some request for ending the process anyway, that
	 * it might end on its own first is not a problem.
	 */
	if (proc == NULL)
	{
		/*
		 * This is just a warning so a loop-through-resultset will not abort
		 * if one backend terminated on its own during the run.
		 */
		FUNC2(WARNING,
				(FUNC3("PID %d is not a PostgreSQL server process", pid)));
		return SIGNAL_BACKEND_ERROR;
	}

	/* Only allow superusers to signal superuser-owned backends. */
	if (FUNC7(proc->roleId) && !FUNC6())
		return SIGNAL_BACKEND_NOSUPERUSER;

	/* Users can signal backends they have role membership in. */
	if (!FUNC4(FUNC1(), proc->roleId) &&
		!FUNC4(FUNC1(), DEFAULT_ROLE_SIGNAL_BACKENDID))
		return SIGNAL_BACKEND_NOPERMISSION;

	/*
	 * Can the process we just validated above end, followed by the pid being
	 * recycled for a new process, before reaching here?  Then we'd be trying
	 * to kill the wrong thing.  Seems near impossible when sequential pid
	 * assignment and wraparound is used.  Perhaps it could happen on a system
	 * where pid re-use is randomized.  That race condition possibility seems
	 * too unlikely to worry about.
	 */

	/* If we have setsid(), signal the backend's whole process group */
#ifdef HAVE_SETSID
	if (kill(-pid, sig))
#else
	if (FUNC5(pid, sig))
#endif
	{
		/* Again, just a warning to allow loops */
		FUNC2(WARNING,
				(FUNC3("could not send signal to process %d: %m", pid)));
		return SIGNAL_BACKEND_ERROR;
	}
	return SIGNAL_BACKEND_SUCCESS;
}