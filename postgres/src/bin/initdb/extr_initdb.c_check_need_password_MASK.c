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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ pwfilename ; 
 scalar_t__ pwprompt ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static void
FUNC3(const char *authmethodlocal, const char *authmethodhost)
{
	if ((FUNC2(authmethodlocal, "md5") == 0 ||
		 FUNC2(authmethodlocal, "password") == 0 ||
		 FUNC2(authmethodlocal, "scram-sha-256") == 0) &&
		(FUNC2(authmethodhost, "md5") == 0 ||
		 FUNC2(authmethodhost, "password") == 0 ||
		 FUNC2(authmethodhost, "scram-sha-256") == 0) &&
		!(pwprompt || pwfilename))
	{
		FUNC1("must specify a password for the superuser to enable %s authentication",
					 (FUNC2(authmethodlocal, "md5") == 0 ||
					  FUNC2(authmethodlocal, "password") == 0 ||
					  FUNC2(authmethodlocal, "scram-sha-256") == 0)
					 ? authmethodlocal
					 : authmethodhost);
		FUNC0(1);
	}
}