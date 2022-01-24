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
struct TYPE_3__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__* PQExpBuffer ;
typedef  int /*<<< orphan*/  PGconn ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MAXPGPATH ; 
 scalar_t__ MINIMUM_VERSION_FOR_RECOVERY_GUC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 

void
FUNC8(PGconn *pgconn, char *target_dir, PQExpBuffer contents)
{
	char		filename[MAXPGPATH];
	FILE	   *cf;
	bool		use_recovery_conf;

	FUNC0(pgconn != NULL);

	use_recovery_conf =
		FUNC1(pgconn) < MINIMUM_VERSION_FOR_RECOVERY_GUC;

	FUNC7(filename, MAXPGPATH, "%s/%s", target_dir,
			 use_recovery_conf ? "recovery.conf" : "postgresql.auto.conf");

	cf = FUNC4(filename, use_recovery_conf ? "a" : "w");
	if (cf == NULL)
	{
		FUNC6("could not open file \"%s\": %m", filename);
		FUNC2(1);
	}

	if (FUNC5(contents->data, contents->len, 1, cf) != 1)
	{
		FUNC6("could not write to file \"%s\": %m", filename);
		FUNC2(1);
	}

	FUNC3(cf);

	if (!use_recovery_conf)
	{
		FUNC7(filename, MAXPGPATH, "%s/%s", target_dir, "standby.signal");
		cf = FUNC4(filename, "w");
		if (cf == NULL)
		{
			FUNC6("could not create file \"%s\": %m", filename);
			FUNC2(1);
		}

		FUNC3(cf);
	}
}