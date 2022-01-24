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
typedef  int uid_t ;
typedef  int /*<<< orphan*/  machname ;
typedef  int gid_t ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 int /*<<< orphan*/  MAXHOSTNAMELEN ; 
 int NGRPS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,int,int,int*) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int,int*) ; 
 int FUNC5 (char*,int) ; 

AUTH *
FUNC6()
{
	int len;
	char machname[MAXHOSTNAMELEN + 1];
	uid_t uid;
	gid_t gid;
	gid_t gids[NGRPS];

	if (FUNC5(machname, sizeof machname) == -1)
		FUNC0();
	machname[sizeof(machname) - 1] = 0;
#if 0
	uid = geteuid();
	gid = getegid();
	if ((len = getgroups(NGRPS, gids)) < 0)
		abort();
#else
	// XXX Need to figure out what to do here!
	uid = 666;
	gid = 777;
	gids[0] = 0;
	len = 0;
#endif
	/* XXX: interface problem; those should all have been unsigned */
	return (FUNC1(machname, uid, gid, len, gids));
}