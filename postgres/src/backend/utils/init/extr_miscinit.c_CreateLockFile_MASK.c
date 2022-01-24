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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 char* DataDir ; 
 int EACCES ; 
 int EEXIST ; 
 int ENOENT ; 
 int ENOSPC ; 
 int EPERM ; 
 int /*<<< orphan*/  ERRCODE_LOCK_FILE_EXISTS ; 
 int ESRCH ; 
 int /*<<< orphan*/  FATAL ; 
 int LOCK_FILE_LINE_SHMEM_KEY ; 
 int MAXPGPATH ; 
 scalar_t__ MyStartTime ; 
 scalar_t__ NIL ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  PostPortNumber ; 
 int /*<<< orphan*/  UnlinkLockFiles ; 
 int /*<<< orphan*/  WAIT_EVENT_LOCK_FILE_CREATE_READ ; 
 int /*<<< orphan*/  WAIT_EVENT_LOCK_FILE_CREATE_SYNC ; 
 int /*<<< orphan*/  WAIT_EVENT_LOCK_FILE_CREATE_WRITE ; 
 void* FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int errno ; 
 char* FUNC9 (char*) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ lock_files ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pg_file_create_mode ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char const*) ; 
 int FUNC20 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,int,char*,long,int /*<<< orphan*/ ,char const*) ; 
 int FUNC22 (char*,char*,unsigned long*,unsigned long*) ; 
 char* FUNC23 (char*,char) ; 
 int /*<<< orphan*/  FUNC24 (char*,char*,int) ; 
 scalar_t__ FUNC25 (char*) ; 
 scalar_t__ FUNC26 (char const*) ; 
 scalar_t__ FUNC27 (int,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC28(const char *filename, bool amPostmaster,
			   const char *socketDir,
			   bool isDDLock, const char *refName)
{
	int			fd;
	char		buffer[MAXPGPATH * 2 + 256];
	int			ntries;
	int			len;
	int			encoded_pid;
	pid_t		other_pid;
	pid_t		my_pid,
				my_p_pid,
				my_gp_pid;
	const char *envvar;

	/*
	 * If the PID in the lockfile is our own PID or our parent's or
	 * grandparent's PID, then the file must be stale (probably left over from
	 * a previous system boot cycle).  We need to check this because of the
	 * likelihood that a reboot will assign exactly the same PID as we had in
	 * the previous reboot, or one that's only one or two counts larger and
	 * hence the lockfile's PID now refers to an ancestor shell process.  We
	 * allow pg_ctl to pass down its parent shell PID (our grandparent PID)
	 * via the environment variable PG_GRANDPARENT_PID; this is so that
	 * launching the postmaster via pg_ctl can be just as reliable as
	 * launching it directly.  There is no provision for detecting
	 * further-removed ancestor processes, but if the init script is written
	 * carefully then all but the immediate parent shell will be root-owned
	 * processes and so the kill test will fail with EPERM.  Note that we
	 * cannot get a false negative this way, because an existing postmaster
	 * would surely never launch a competing postmaster or pg_ctl process
	 * directly.
	 */
	my_pid = FUNC10();

#ifndef WIN32
	my_p_pid = FUNC11();
#else

	/*
	 * Windows hasn't got getppid(), but doesn't need it since it's not using
	 * real kill() either...
	 */
	my_p_pid = 0;
#endif

	envvar = FUNC9("PG_GRANDPARENT_PID");
	if (envvar)
		my_gp_pid = FUNC1(envvar);
	else
		my_gp_pid = 0;

	/*
	 * We need a loop here because of race conditions.  But don't loop forever
	 * (for example, a non-writable $PGDATA directory might cause a failure
	 * that won't go away).  100 tries seems like plenty.
	 */
	for (ntries = 0;; ntries++)
	{
		/*
		 * Try to create the lock file --- O_EXCL makes this atomic.
		 *
		 * Think not to make the file protection weaker than 0600/0640.  See
		 * comments below.
		 */
		fd = FUNC15(filename, O_RDWR | O_CREAT | O_EXCL, pg_file_create_mode);
		if (fd >= 0)
			break;				/* Success; exit the retry loop */

		/*
		 * Couldn't create the pid file. Probably it already exists.
		 */
		if ((errno != EEXIST && errno != EACCES) || ntries > 100)
			FUNC4(FATAL,
					(FUNC6(),
					 FUNC8("could not create lock file \"%s\": %m",
							filename)));

		/*
		 * Read the file to get the old owner's PID.  Note race condition
		 * here: file might have been deleted since we tried to create it.
		 */
		fd = FUNC15(filename, O_RDONLY, pg_file_create_mode);
		if (fd < 0)
		{
			if (errno == ENOENT)
				continue;		/* race condition; try again */
			FUNC4(FATAL,
					(FUNC6(),
					 FUNC8("could not open lock file \"%s\": %m",
							filename)));
		}
		FUNC18(WAIT_EVENT_LOCK_FILE_CREATE_READ);
		if ((len = FUNC20(fd, buffer, sizeof(buffer) - 1)) < 0)
			FUNC4(FATAL,
					(FUNC6(),
					 FUNC8("could not read lock file \"%s\": %m",
							filename)));
		FUNC17();
		FUNC2(fd);

		if (len == 0)
		{
			FUNC4(FATAL,
					(FUNC5(ERRCODE_LOCK_FILE_EXISTS),
					 FUNC8("lock file \"%s\" is empty", filename),
					 FUNC7("Either another server is starting, or the lock file is the remnant of a previous server startup crash.")));
		}

		buffer[len] = '\0';
		encoded_pid = FUNC1(buffer);

		/* if pid < 0, the pid is for postgres, not postmaster */
		other_pid = (pid_t) (encoded_pid < 0 ? -encoded_pid : encoded_pid);

		if (other_pid <= 0)
			FUNC3(FATAL, "bogus data in lock file \"%s\": \"%s\"",
				 filename, buffer);

		/*
		 * Check to see if the other process still exists
		 *
		 * Per discussion above, my_pid, my_p_pid, and my_gp_pid can be
		 * ignored as false matches.
		 *
		 * Normally kill() will fail with ESRCH if the given PID doesn't
		 * exist.
		 *
		 * We can treat the EPERM-error case as okay because that error
		 * implies that the existing process has a different userid than we
		 * do, which means it cannot be a competing postmaster.  A postmaster
		 * cannot successfully attach to a data directory owned by a userid
		 * other than its own, as enforced in checkDataDir(). Also, since we
		 * create the lockfiles mode 0600/0640, we'd have failed above if the
		 * lockfile belonged to another userid --- which means that whatever
		 * process kill() is reporting about isn't the one that made the
		 * lockfile.  (NOTE: this last consideration is the only one that
		 * keeps us from blowing away a Unix socket file belonging to an
		 * instance of Postgres being run by someone else, at least on
		 * machines where /tmp hasn't got a stickybit.)
		 */
		if (other_pid != my_pid && other_pid != my_p_pid &&
			other_pid != my_gp_pid)
		{
			if (FUNC12(other_pid, 0) == 0 ||
				(errno != ESRCH && errno != EPERM))
			{
				/* lockfile belongs to a live process */
				FUNC4(FATAL,
						(FUNC5(ERRCODE_LOCK_FILE_EXISTS),
						 FUNC8("lock file \"%s\" already exists",
								filename),
						 isDDLock ?
						 (encoded_pid < 0 ?
						  FUNC7("Is another postgres (PID %d) running in data directory \"%s\"?",
								  (int) other_pid, refName) :
						  FUNC7("Is another postmaster (PID %d) running in data directory \"%s\"?",
								  (int) other_pid, refName)) :
						 (encoded_pid < 0 ?
						  FUNC7("Is another postgres (PID %d) using socket file \"%s\"?",
								  (int) other_pid, refName) :
						  FUNC7("Is another postmaster (PID %d) using socket file \"%s\"?",
								  (int) other_pid, refName))));
			}
		}

		/*
		 * No, the creating process did not exist.  However, it could be that
		 * the postmaster crashed (or more likely was kill -9'd by a clueless
		 * admin) but has left orphan backends behind.  Check for this by
		 * looking to see if there is an associated shmem segment that is
		 * still in use.
		 *
		 * Note: because postmaster.pid is written in multiple steps, we might
		 * not find the shmem ID values in it; we can't treat that as an
		 * error.
		 */
		if (isDDLock)
		{
			char	   *ptr = buffer;
			unsigned long id1,
						id2;
			int			lineno;

			for (lineno = 1; lineno < LOCK_FILE_LINE_SHMEM_KEY; lineno++)
			{
				if ((ptr = FUNC23(ptr, '\n')) == NULL)
					break;
				ptr++;
			}

			if (ptr != NULL &&
				FUNC22(ptr, "%lu %lu", &id1, &id2) == 2)
			{
				if (FUNC0(id1, id2))
					FUNC4(FATAL,
							(FUNC5(ERRCODE_LOCK_FILE_EXISTS),
							 FUNC8("pre-existing shared memory block (key %lu, ID %lu) is still in use",
									id1, id2),
							 FUNC7("Terminate any old server processes associated with data directory \"%s\".",
									 refName)));
			}
		}

		/*
		 * Looks like nobody's home.  Unlink the file and try again to create
		 * it.  Need a loop because of possible race condition against other
		 * would-be creators.
		 */
		if (FUNC26(filename) < 0)
			FUNC4(FATAL,
					(FUNC6(),
					 FUNC8("could not remove old lock file \"%s\": %m",
							filename),
					 FUNC7("The file seems accidentally left over, but "
							 "it could not be removed. Please remove the file "
							 "by hand and try again.")));
	}

	/*
	 * Successfully created the file, now fill it.  See comment in miscadmin.h
	 * about the contents.  Note that we write the same first five lines into
	 * both datadir and socket lockfiles; although more stuff may get added to
	 * the datadir lockfile later.
	 */
	FUNC21(buffer, sizeof(buffer), "%d\n%s\n%ld\n%d\n%s\n",
			 amPostmaster ? (int) my_pid : -((int) my_pid),
			 DataDir,
			 (long) MyStartTime,
			 PostPortNumber,
			 socketDir);

	/*
	 * In a standalone backend, the next line (LOCK_FILE_LINE_LISTEN_ADDR)
	 * will never receive data, so fill it in as empty now.
	 */
	if (isDDLock && !amPostmaster)
		FUNC24(buffer, "\n", sizeof(buffer));

	errno = 0;
	FUNC18(WAIT_EVENT_LOCK_FILE_CREATE_WRITE);
	if (FUNC27(fd, buffer, FUNC25(buffer)) != FUNC25(buffer))
	{
		int			save_errno = errno;

		FUNC2(fd);
		FUNC26(filename);
		/* if write didn't set errno, assume problem is no disk space */
		errno = save_errno ? save_errno : ENOSPC;
		FUNC4(FATAL,
				(FUNC6(),
				 FUNC8("could not write lock file \"%s\": %m", filename)));
	}
	FUNC17();

	FUNC18(WAIT_EVENT_LOCK_FILE_CREATE_SYNC);
	if (FUNC16(fd) != 0)
	{
		int			save_errno = errno;

		FUNC2(fd);
		FUNC26(filename);
		errno = save_errno;
		FUNC4(FATAL,
				(FUNC6(),
				 FUNC8("could not write lock file \"%s\": %m", filename)));
	}
	FUNC17();
	if (FUNC2(fd) != 0)
	{
		int			save_errno = errno;

		FUNC26(filename);
		errno = save_errno;
		FUNC4(FATAL,
				(FUNC6(),
				 FUNC8("could not write lock file \"%s\": %m", filename)));
	}

	/*
	 * Arrange to unlink the lock file(s) at proc_exit.  If this is the first
	 * one, set up the on_proc_exit function to do it; then add this lock file
	 * to the list of files to unlink.
	 */
	if (lock_files == NIL)
		FUNC14(UnlinkLockFiles, 0);

	/*
	 * Use lcons so that the lock files are unlinked in reverse order of
	 * creation; this is critical!
	 */
	lock_files = FUNC13(FUNC19(filename), lock_files);
}