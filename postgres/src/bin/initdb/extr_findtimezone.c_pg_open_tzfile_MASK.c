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
typedef  int /*<<< orphan*/  fullname ;

/* Variables and functions */
 int MAXPGPATH ; 
 int O_RDONLY ; 
 int PG_BINARY ; 
 int TZ_STRLEN_MAX ; 
 int FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 char const* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*) ; 

int
FUNC5(const char *name, char *canonname)
{
	char		fullname[MAXPGPATH];

	if (canonname)
		FUNC3(canonname, name, TZ_STRLEN_MAX + 1);

	FUNC3(fullname, FUNC1(), sizeof(fullname));
	if (FUNC4(fullname) + 1 + FUNC4(name) >= MAXPGPATH)
		return -1;				/* not gonna fit */
	FUNC2(fullname, "/");
	FUNC2(fullname, name);

	return FUNC0(fullname, O_RDONLY | PG_BINARY, 0);
}