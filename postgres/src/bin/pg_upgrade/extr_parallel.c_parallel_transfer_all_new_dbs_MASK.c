#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * old_tablespace; int /*<<< orphan*/ * new_pgdata; int /*<<< orphan*/ * old_pgdata; int /*<<< orphan*/ * new_db_arr; int /*<<< orphan*/ * old_db_arr; } ;
typedef  TYPE_1__ transfer_thread_arg ;
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_7__ {int jobs; } ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DbInfoArr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void** cur_thread_args ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int parallel_jobs ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int) ; 
 TYPE_1__* FUNC7 (int) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__* thread_handles ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*) ; 
 TYPE_1__** transfer_thread_args ; 
 TYPE_2__ user_opts ; 
 scalar_t__ win32_transfer_all_new_dbs ; 

void
FUNC12(DbInfoArr *old_db_arr, DbInfoArr *new_db_arr,
							  char *old_pgdata, char *new_pgdata,
							  char *old_tablespace)
{
#ifndef WIN32
	pid_t		child;
#else
	HANDLE		child;
	transfer_thread_arg *new_arg;
#endif

	if (user_opts.jobs <= 1)
		FUNC11(old_db_arr, new_db_arr, old_pgdata, new_pgdata, NULL);
	else
	{
		/* parallel */
#ifdef WIN32
		if (thread_handles == NULL)
			thread_handles = pg_malloc(user_opts.jobs * sizeof(HANDLE));

		if (transfer_thread_args == NULL)
		{
			int			i;

			transfer_thread_args = pg_malloc(user_opts.jobs * sizeof(transfer_thread_arg *));

			/*
			 * For safety and performance, we keep the args allocated during
			 * the entire life of the process, and we don't free the args in a
			 * thread different from the one that allocated it.
			 */
			for (i = 0; i < user_opts.jobs; i++)
				transfer_thread_args[i] = pg_malloc0(sizeof(transfer_thread_arg));
		}

		cur_thread_args = (void **) transfer_thread_args;
#endif
		/* harvest any dead children */
		while (FUNC9(false) == true)
			;

		/* must we wait for a dead child? */
		if (parallel_jobs >= user_opts.jobs)
			FUNC9(true);

		/* set this before we start the job */
		parallel_jobs++;

		/* Ensure stdio state is quiesced before forking */
		FUNC2(NULL);

#ifndef WIN32
		child = FUNC3();
		if (child == 0)
		{
			FUNC11(old_db_arr, new_db_arr, old_pgdata, new_pgdata,
								 old_tablespace);
			/* if we take another exit path, it will be non-zero */
			/* use _exit to skip atexit() functions */
			FUNC1(0);
		}
		else if (child < 0)
			/* fork failed */
			FUNC4("could not create worker process: %s\n", FUNC10(errno));
#else
		/* empty array element are always at the end */
		new_arg = transfer_thread_args[parallel_jobs - 1];

		/* Can only pass one pointer into the function, so use a struct */
		new_arg->old_db_arr = old_db_arr;
		new_arg->new_db_arr = new_db_arr;
		if (new_arg->old_pgdata)
			pg_free(new_arg->old_pgdata);
		new_arg->old_pgdata = pg_strdup(old_pgdata);
		if (new_arg->new_pgdata)
			pg_free(new_arg->new_pgdata);
		new_arg->new_pgdata = pg_strdup(new_pgdata);
		if (new_arg->old_tablespace)
			pg_free(new_arg->old_tablespace);
		new_arg->old_tablespace = old_tablespace ? pg_strdup(old_tablespace) : NULL;

		child = (HANDLE) _beginthreadex(NULL, 0, (void *) win32_transfer_all_new_dbs,
										new_arg, 0, NULL);
		if (child == 0)
			pg_fatal("could not create worker thread: %s\n", strerror(errno));

		thread_handles[parallel_jobs - 1] = child;
#endif
	}

	return;
}