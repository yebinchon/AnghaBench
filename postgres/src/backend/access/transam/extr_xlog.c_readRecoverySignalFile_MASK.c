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
 int ArchiveRecoveryRequested ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FATAL ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  IsUnderPostmaster ; 
 int O_RDWR ; 
 int PG_BINARY ; 
 int /*<<< orphan*/  RECOVERY_COMMAND_DONE ; 
 int /*<<< orphan*/  RECOVERY_COMMAND_FILE ; 
 int /*<<< orphan*/  RECOVERY_SIGNAL_FILE ; 
 int /*<<< orphan*/  STANDBY_SIGNAL_FILE ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int StandbyModeRequested ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int recovery_signal_file_found ; 
 int standby_signal_file_found ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  sync_method ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(void)
{
	struct stat stat_buf;

	if (FUNC1())
		return;

	/*
	 * Check for old recovery API file: recovery.conf
	 */
	if (FUNC9(RECOVERY_COMMAND_FILE, &stat_buf) == 0)
		FUNC3(FATAL,
				(FUNC5(),
				 FUNC6("using recovery command file \"%s\" is not supported",
						RECOVERY_COMMAND_FILE)));

	/*
	 * Remove unused .done file, if present. Ignore if absent.
	 */
	FUNC10(RECOVERY_COMMAND_DONE);

	/*
	 * Check for recovery signal files and if found, fsync them since they
	 * represent server state information.  We don't sweat too much about the
	 * possibility of fsync failure, however.
	 *
	 * If present, standby signal file takes precedence. If neither is present
	 * then we won't enter archive recovery.
	 */
	if (FUNC9(STANDBY_SIGNAL_FILE, &stat_buf) == 0)
	{
		int			fd;

		fd = FUNC0(STANDBY_SIGNAL_FILE, O_RDWR | PG_BINARY | FUNC7(sync_method),
							   S_IRUSR | S_IWUSR);
		if (fd >= 0)
		{
			(void) FUNC8(fd);
			FUNC2(fd);
		}
		standby_signal_file_found = true;
	}
	else if (FUNC9(RECOVERY_SIGNAL_FILE, &stat_buf) == 0)
	{
		int			fd;

		fd = FUNC0(RECOVERY_SIGNAL_FILE, O_RDWR | PG_BINARY | FUNC7(sync_method),
							   S_IRUSR | S_IWUSR);
		if (fd >= 0)
		{
			(void) FUNC8(fd);
			FUNC2(fd);
		}
		recovery_signal_file_found = true;
	}

	StandbyModeRequested = false;
	ArchiveRecoveryRequested = false;
	if (standby_signal_file_found)
	{
		StandbyModeRequested = true;
		ArchiveRecoveryRequested = true;
	}
	else if (recovery_signal_file_found)
	{
		StandbyModeRequested = false;
		ArchiveRecoveryRequested = true;
	}
	else
		return;

	/*
	 * We don't support standby mode in standalone backends; that requires
	 * other processes such as the WAL receiver to be alive.
	 */
	if (StandbyModeRequested && !IsUnderPostmaster)
		FUNC3(FATAL,
				(FUNC4(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC6("standby mode is not supported by single-user servers")));
}