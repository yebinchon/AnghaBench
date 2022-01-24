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
typedef  int /*<<< orphan*/  PQExpBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

bool
FUNC4(PQExpBuffer buf, const char *str)
{
#ifdef WIN32
	int			backslash_run_length = 0;
#endif
	bool		ok = true;
	const char *p;

	/*
	 * Don't bother with adding quotes if the string is nonempty and clearly
	 * contains only safe characters.
	 */
	if (*str != '\0' &&
		FUNC3(str, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_./:") == FUNC2(str))
	{
		FUNC1(buf, str);
		return ok;
	}

#ifndef WIN32
	FUNC0(buf, '\'');
	for (p = str; *p; p++)
	{
		if (*p == '\n' || *p == '\r')
		{
			ok = false;
			continue;
		}

		if (*p == '\'')
			FUNC1(buf, "'\"'\"'");
		else
			FUNC0(buf, *p);
	}
	FUNC0(buf, '\'');
#else							/* WIN32 */

	/*
	 * A Windows system() argument experiences two layers of interpretation.
	 * First, cmd.exe interprets the string.  Its behavior is undocumented,
	 * but a caret escapes any byte except LF or CR that would otherwise have
	 * special meaning.  Handling of a caret before LF or CR differs between
	 * "cmd.exe /c" and other modes, and it is unusable here.
	 *
	 * Second, the new process parses its command line to construct argv (see
	 * https://msdn.microsoft.com/en-us/library/17w5ykft.aspx).  This treats
	 * backslash-double quote sequences specially.
	 */
	appendPQExpBufferStr(buf, "^\"");
	for (p = str; *p; p++)
	{
		if (*p == '\n' || *p == '\r')
		{
			ok = false;
			continue;
		}

		/* Change N backslashes before a double quote to 2N+1 backslashes. */
		if (*p == '"')
		{
			while (backslash_run_length)
			{
				appendPQExpBufferStr(buf, "^\\");
				backslash_run_length--;
			}
			appendPQExpBufferStr(buf, "^\\");
		}
		else if (*p == '\\')
			backslash_run_length++;
		else
			backslash_run_length = 0;

		/*
		 * Decline to caret-escape the most mundane characters, to ease
		 * debugging and lest we approach the command length limit.
		 */
		if (!((*p >= 'a' && *p <= 'z') ||
			  (*p >= 'A' && *p <= 'Z') ||
			  (*p >= '0' && *p <= '9')))
			appendPQExpBufferChar(buf, '^');
		appendPQExpBufferChar(buf, *p);
	}

	/*
	 * Change N backslashes at end of argument to 2N backslashes, because they
	 * precede the double quote that terminates the argument.
	 */
	while (backslash_run_length)
	{
		appendPQExpBufferStr(buf, "^\\");
		backslash_run_length--;
	}
	appendPQExpBufferStr(buf, "^\"");
#endif							/* WIN32 */

	return ok;
}