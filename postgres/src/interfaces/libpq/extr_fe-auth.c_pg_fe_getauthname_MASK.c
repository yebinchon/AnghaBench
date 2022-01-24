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
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  pwdbuf ;
typedef  scalar_t__ PQExpBuffer ;
typedef  int DWORD ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (char*,int*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (scalar_t__,struct passwd*,char*,int,struct passwd**) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,...) ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 

char *
FUNC10(PQExpBuffer errorMessage)
{
	char	   *result = NULL;
	const char *name = NULL;

#ifdef WIN32
	/* Microsoft recommends buffer size of UNLEN+1, where UNLEN = 256 */
	char		username[256 + 1];
	DWORD		namesize = sizeof(username);
#else
	uid_t		user_id = FUNC2();
	char		pwdbuf[BUFSIZ];
	struct passwd pwdstr;
	struct passwd *pw = NULL;
	int			pwerr;
#endif

	/*
	 * Some users are using configure --enable-thread-safety-force, so we
	 * might as well do the locking within our library to protect
	 * pqGetpwuid(). In fact, application developers can use getpwuid() in
	 * their application if they use the locking call we provide, or install
	 * their own locking function using PQregisterThreadLock().
	 */
	FUNC4();

#ifdef WIN32
	if (GetUserName(username, &namesize))
		name = username;
	else if (errorMessage)
		printfPQExpBuffer(errorMessage,
						  libpq_gettext("user name lookup failure: error code %lu\n"),
						  GetLastError());
#else
	pwerr = FUNC6(user_id, &pwdstr, pwdbuf, sizeof(pwdbuf), &pw);
	if (pw != NULL)
		name = pw->pw_name;
	else if (errorMessage)
	{
		if (pwerr != 0)
			FUNC7(errorMessage,
							  FUNC3("could not look up local user ID %d: %s\n"),
							  (int) user_id,
							  FUNC9(pwerr, pwdbuf, sizeof(pwdbuf)));
		else
			FUNC7(errorMessage,
							  FUNC3("local user with ID %d does not exist\n"),
							  (int) user_id);
	}
#endif

	if (name)
	{
		result = FUNC8(name);
		if (result == NULL && errorMessage)
			FUNC7(errorMessage,
							  FUNC3("out of memory\n"));
	}

	FUNC5();

	return result;
}