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
typedef  int /*<<< orphan*/  username ;
typedef  scalar_t__ uid_t ;
struct passwd {char const* pw_name; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 () ; 
 struct passwd* FUNC4 (scalar_t__) ; 
 char* FUNC5 (int /*<<< orphan*/ ,long,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

const char *
FUNC7(char **errstr)
{
#ifndef WIN32
	struct passwd *pw;
	uid_t		user_id = FUNC3();

	*errstr = NULL;

	errno = 0;					/* clear errno before call */
	pw = FUNC4(user_id);
	if (!pw)
	{
		*errstr = FUNC5(FUNC2("could not look up effective user ID %ld: %s"),
						   (long) user_id,
						   errno ? FUNC6(errno) : FUNC2("user does not exist"));
		return NULL;
	}

	return pw->pw_name;
#else
	/* Microsoft recommends buffer size of UNLEN+1, where UNLEN = 256 */
	/* "static" variable remains after function exit */
	static char username[256 + 1];
	DWORD		len = sizeof(username);

	*errstr = NULL;

	if (!GetUserName(username, &len))
	{
		*errstr = psprintf(_("user name lookup failure: error code %lu"),
						   GetLastError());
		return NULL;
	}

	return username;
#endif
}