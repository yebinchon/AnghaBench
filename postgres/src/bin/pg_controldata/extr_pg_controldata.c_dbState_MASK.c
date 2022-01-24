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
typedef  int DBState ;

/* Variables and functions */
#define  DB_IN_ARCHIVE_RECOVERY 134 
#define  DB_IN_CRASH_RECOVERY 133 
#define  DB_IN_PRODUCTION 132 
#define  DB_SHUTDOWNED 131 
#define  DB_SHUTDOWNED_IN_RECOVERY 130 
#define  DB_SHUTDOWNING 129 
#define  DB_STARTUP 128 
 char const* FUNC0 (char*) ; 

__attribute__((used)) static const char *
FUNC1(DBState state)
{
	switch (state)
	{
		case DB_STARTUP:
			return FUNC0("starting up");
		case DB_SHUTDOWNED:
			return FUNC0("shut down");
		case DB_SHUTDOWNED_IN_RECOVERY:
			return FUNC0("shut down in recovery");
		case DB_SHUTDOWNING:
			return FUNC0("shutting down");
		case DB_IN_CRASH_RECOVERY:
			return FUNC0("in crash recovery");
		case DB_IN_ARCHIVE_RECOVERY:
			return FUNC0("in archive recovery");
		case DB_IN_PRODUCTION:
			return FUNC0("in production");
	}
	return FUNC0("unrecognized status code");
}