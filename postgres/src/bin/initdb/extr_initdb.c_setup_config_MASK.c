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
struct addrinfo {int /*<<< orphan*/ * ai_next; int /*<<< orphan*/ * ai_addr; int /*<<< orphan*/ * ai_canonname; scalar_t__ ai_addrlen; scalar_t__ ai_protocol; scalar_t__ ai_socktype; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  repltok ;
typedef  int /*<<< orphan*/  path ;
typedef  int /*<<< orphan*/  WSADATA ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 char* AUTHTRUST_WARNING ; 
 int BLCKSZ ; 
#define  DATEORDER_DMY 130 
#define  DATEORDER_MDY 129 
#define  DATEORDER_YMD 128 
 int DEFAULT_BACKEND_FLUSH_AFTER ; 
 int DEFAULT_BGWRITER_FLUSH_AFTER ; 
 int DEFAULT_CHECKPOINT_FLUSH_AFTER ; 
 int /*<<< orphan*/  DEFAULT_MAX_WAL_SEGS ; 
 int /*<<< orphan*/  DEFAULT_MIN_WAL_SEGS ; 
 char* DEFAULT_PGSOCKET_DIR ; 
 int DEF_PGPORT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int MAXPGPATH ; 
 scalar_t__ PG_DIR_MODE_GROUP ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* authmethodhost ; 
 char* authmethodlocal ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conf_file ; 
 scalar_t__ default_text_search_config ; 
 scalar_t__ default_timezone ; 
 char* dynamic_shared_memory_type ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 char** FUNC8 (char**,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char**) ; 
 scalar_t__ FUNC11 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  hba_file ; 
 int /*<<< orphan*/  ident_file ; 
 scalar_t__ lc_messages ; 
 scalar_t__ lc_monetary ; 
 scalar_t__ lc_numeric ; 
 scalar_t__ lc_time ; 
 int FUNC12 (scalar_t__) ; 
 int n_buffers ; 
 int n_connections ; 
 char* pg_data ; 
 scalar_t__ pg_dir_create_mode ; 
 int /*<<< orphan*/  pg_file_create_mode ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 char* FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ) ; 
 char** FUNC16 (int /*<<< orphan*/ ) ; 
 char** FUNC17 (char**,char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char**) ; 

__attribute__((used)) static void
FUNC23(void)
{
	char	  **conflines;
	char		repltok[MAXPGPATH];
	char		path[MAXPGPATH];
	char	   *autoconflines[3];

	FUNC9(FUNC2("creating configuration files ... "), stdout);
	FUNC7(stdout);

	/* postgresql.conf */

	conflines = FUNC16(conf_file);

	FUNC18(repltok, sizeof(repltok), "max_connections = %d", n_connections);
	conflines = FUNC17(conflines, "#max_connections = 100", repltok);

	if ((n_buffers * (BLCKSZ / 1024)) % 1024 == 0)
		FUNC18(repltok, sizeof(repltok), "shared_buffers = %dMB",
				 (n_buffers * (BLCKSZ / 1024)) / 1024);
	else
		FUNC18(repltok, sizeof(repltok), "shared_buffers = %dkB",
				 n_buffers * (BLCKSZ / 1024));
	conflines = FUNC17(conflines, "#shared_buffers = 32MB", repltok);

#ifdef HAVE_UNIX_SOCKETS
	snprintf(repltok, sizeof(repltok), "#unix_socket_directories = '%s'",
			 DEFAULT_PGSOCKET_DIR);
#else
	FUNC18(repltok, sizeof(repltok), "#unix_socket_directories = ''");
#endif
	conflines = FUNC17(conflines, "#unix_socket_directories = '/tmp'",
							  repltok);

#if DEF_PGPORT != 5432
	FUNC18(repltok, sizeof(repltok), "#port = %d", DEF_PGPORT);
	conflines = FUNC17(conflines, "#port = 5432", repltok);
#endif

	/* set default max_wal_size and min_wal_size */
	FUNC18(repltok, sizeof(repltok), "min_wal_size = %s",
			 FUNC15(DEFAULT_MIN_WAL_SEGS));
	conflines = FUNC17(conflines, "#min_wal_size = 80MB", repltok);

	FUNC18(repltok, sizeof(repltok), "max_wal_size = %s",
			 FUNC15(DEFAULT_MAX_WAL_SEGS));
	conflines = FUNC17(conflines, "#max_wal_size = 1GB", repltok);

	FUNC18(repltok, sizeof(repltok), "lc_messages = '%s'",
			 FUNC5(lc_messages));
	conflines = FUNC17(conflines, "#lc_messages = 'C'", repltok);

	FUNC18(repltok, sizeof(repltok), "lc_monetary = '%s'",
			 FUNC5(lc_monetary));
	conflines = FUNC17(conflines, "#lc_monetary = 'C'", repltok);

	FUNC18(repltok, sizeof(repltok), "lc_numeric = '%s'",
			 FUNC5(lc_numeric));
	conflines = FUNC17(conflines, "#lc_numeric = 'C'", repltok);

	FUNC18(repltok, sizeof(repltok), "lc_time = '%s'",
			 FUNC5(lc_time));
	conflines = FUNC17(conflines, "#lc_time = 'C'", repltok);

	switch (FUNC12(lc_time))
	{
		case DATEORDER_YMD:
			FUNC21(repltok, "datestyle = 'iso, ymd'");
			break;
		case DATEORDER_DMY:
			FUNC21(repltok, "datestyle = 'iso, dmy'");
			break;
		case DATEORDER_MDY:
		default:
			FUNC21(repltok, "datestyle = 'iso, mdy'");
			break;
	}
	conflines = FUNC17(conflines, "#datestyle = 'iso, mdy'", repltok);

	FUNC18(repltok, sizeof(repltok),
			 "default_text_search_config = 'pg_catalog.%s'",
			 FUNC5(default_text_search_config));
	conflines = FUNC17(conflines,
							  "#default_text_search_config = 'pg_catalog.simple'",
							  repltok);

	if (default_timezone)
	{
		FUNC18(repltok, sizeof(repltok), "timezone = '%s'",
				 FUNC5(default_timezone));
		conflines = FUNC17(conflines, "#timezone = 'GMT'", repltok);
		FUNC18(repltok, sizeof(repltok), "log_timezone = '%s'",
				 FUNC5(default_timezone));
		conflines = FUNC17(conflines, "#log_timezone = 'GMT'", repltok);
	}

	FUNC18(repltok, sizeof(repltok), "dynamic_shared_memory_type = %s",
			 dynamic_shared_memory_type);
	conflines = FUNC17(conflines, "#dynamic_shared_memory_type = posix",
							  repltok);

#if DEFAULT_BACKEND_FLUSH_AFTER > 0
	snprintf(repltok, sizeof(repltok), "#backend_flush_after = %dkB",
			 DEFAULT_BACKEND_FLUSH_AFTER * (BLCKSZ / 1024));
	conflines = replace_token(conflines, "#backend_flush_after = 0",
							  repltok);
#endif

#if DEFAULT_BGWRITER_FLUSH_AFTER > 0
	snprintf(repltok, sizeof(repltok), "#bgwriter_flush_after = %dkB",
			 DEFAULT_BGWRITER_FLUSH_AFTER * (BLCKSZ / 1024));
	conflines = replace_token(conflines, "#bgwriter_flush_after = 0",
							  repltok);
#endif

#if DEFAULT_CHECKPOINT_FLUSH_AFTER > 0
	snprintf(repltok, sizeof(repltok), "#checkpoint_flush_after = %dkB",
			 DEFAULT_CHECKPOINT_FLUSH_AFTER * (BLCKSZ / 1024));
	conflines = replace_token(conflines, "#checkpoint_flush_after = 0",
							  repltok);
#endif

#ifndef USE_PREFETCH
	conflines = FUNC17(conflines,
							  "#effective_io_concurrency = 1",
							  "#effective_io_concurrency = 0");
#endif

#ifdef WIN32
	conflines = replace_token(conflines,
							  "#update_process_title = on",
							  "#update_process_title = off");
#endif

	if (FUNC20(authmethodlocal, "scram-sha-256") == 0 ||
		FUNC20(authmethodhost, "scram-sha-256") == 0)
	{
		conflines = FUNC17(conflines,
								  "#password_encryption = md5",
								  "password_encryption = scram-sha-256");
	}

	/*
	 * If group access has been enabled for the cluster then it makes sense to
	 * ensure that the log files also allow group access.  Otherwise a backup
	 * from a user in the group would fail if the log files were not
	 * relocated.
	 */
	if (pg_dir_create_mode == PG_DIR_MODE_GROUP)
	{
		conflines = FUNC17(conflines,
								  "#log_file_mode = 0600",
								  "log_file_mode = 0640");
	}

	FUNC18(path, sizeof(path), "%s/postgresql.conf", pg_data);

	FUNC22(path, conflines);
	if (FUNC4(path, pg_file_create_mode) != 0)
	{
		FUNC13("could not change permissions of \"%s\": %m", path);
		FUNC6(1);
	}

	/*
	 * create the automatic configuration file to store the configuration
	 * parameters set by ALTER SYSTEM command. The parameters present in this
	 * file will override the value of parameters that exists before parse of
	 * this file.
	 */
	autoconflines[0] = FUNC14("# Do not edit this file manually!\n");
	autoconflines[1] = FUNC14("# It will be overwritten by the ALTER SYSTEM command.\n");
	autoconflines[2] = NULL;

	FUNC19(path, "%s/postgresql.auto.conf", pg_data);

	FUNC22(path, autoconflines);
	if (FUNC4(path, pg_file_create_mode) != 0)
	{
		FUNC13("could not change permissions of \"%s\": %m", path);
		FUNC6(1);
	}

	FUNC10(conflines);


	/* pg_hba.conf */

	conflines = FUNC16(hba_file);

#ifndef HAVE_UNIX_SOCKETS
	conflines = FUNC8(conflines, "@remove-line-for-nolocal@");
#else
	conflines = replace_token(conflines, "@remove-line-for-nolocal@", "");
#endif

#ifdef HAVE_IPV6

	/*
	 * Probe to see if there is really any platform support for IPv6, and
	 * comment out the relevant pg_hba line if not.  This avoids runtime
	 * warnings if getaddrinfo doesn't actually cope with IPv6.  Particularly
	 * useful on Windows, where executables built on a machine with IPv6 may
	 * have to run on a machine without.
	 */
	{
		struct addrinfo *gai_result;
		struct addrinfo hints;
		int			err = 0;

#ifdef WIN32
		/* need to call WSAStartup before calling getaddrinfo */
		WSADATA		wsaData;

		err = WSAStartup(MAKEWORD(2, 2), &wsaData);
#endif

		/* for best results, this code should match parse_hba_line() */
		hints.ai_flags = AI_NUMERICHOST;
		hints.ai_family = AF_UNSPEC;
		hints.ai_socktype = 0;
		hints.ai_protocol = 0;
		hints.ai_addrlen = 0;
		hints.ai_canonname = NULL;
		hints.ai_addr = NULL;
		hints.ai_next = NULL;

		if (err != 0 ||
			getaddrinfo("::1", NULL, &hints, &gai_result) != 0)
		{
			conflines = replace_token(conflines,
									  "host    all             all             ::1",
									  "#host    all             all             ::1");
			conflines = replace_token(conflines,
									  "host    replication     all             ::1",
									  "#host    replication     all             ::1");
		}
	}
#else							/* !HAVE_IPV6 */
	/* If we didn't compile IPV6 support at all, always comment it out */
	conflines = FUNC17(conflines,
							  "host    all             all             ::1",
							  "#host    all             all             ::1");
	conflines = FUNC17(conflines,
							  "host    replication     all             ::1",
							  "#host    replication     all             ::1");
#endif							/* HAVE_IPV6 */

	/* Replace default authentication methods */
	conflines = FUNC17(conflines,
							  "@authmethodhost@",
							  authmethodhost);
	conflines = FUNC17(conflines,
							  "@authmethodlocal@",
							  authmethodlocal);

	conflines = FUNC17(conflines,
							  "@authcomment@",
							  (FUNC20(authmethodlocal, "trust") == 0 || FUNC20(authmethodhost, "trust") == 0) ? AUTHTRUST_WARNING : "");

	FUNC18(path, sizeof(path), "%s/pg_hba.conf", pg_data);

	FUNC22(path, conflines);
	if (FUNC4(path, pg_file_create_mode) != 0)
	{
		FUNC13("could not change permissions of \"%s\": %m", path);
		FUNC6(1);
	}

	FUNC10(conflines);

	/* pg_ident.conf */

	conflines = FUNC16(ident_file);

	FUNC18(path, sizeof(path), "%s/pg_ident.conf", pg_data);

	FUNC22(path, conflines);
	if (FUNC4(path, pg_file_create_mode) != 0)
	{
		FUNC13("could not change permissions of \"%s\": %m", path);
		FUNC6(1);
	}

	FUNC10(conflines);

	FUNC3();
}