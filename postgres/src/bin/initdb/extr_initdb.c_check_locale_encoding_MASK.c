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
 int PG_SQL_ASCII ; 
 int PG_UTF8 ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bool
FUNC5(const char *locale, int user_enc)
{
	int			locale_enc;

	locale_enc = FUNC3(locale, true);

	/* See notes in createdb() to understand these tests */
	if (!(locale_enc == user_enc ||
		  locale_enc == PG_SQL_ASCII ||
		  locale_enc == -1 ||
#ifdef WIN32
		  user_enc == PG_UTF8 ||
#endif
		  user_enc == PG_SQL_ASCII))
	{
		FUNC4("encoding mismatch");
		FUNC1(stderr,
				FUNC0("The encoding you selected (%s) and the encoding that the\n"
				  "selected locale uses (%s) do not match.  This would lead to\n"
				  "misbehavior in various character string processing functions.\n"
				  "Rerun %s and either do not specify an encoding explicitly,\n"
				  "or choose a matching combination.\n"),
				FUNC2(user_enc),
				FUNC2(locale_enc),
				progname);
		return false;
	}
	return true;
}