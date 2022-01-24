#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ rm_so; int rm_eo; } ;
typedef  TYPE_1__ regmatch_t ;
typedef  char pg_wchar ;
typedef  int /*<<< orphan*/  errstr ;
struct TYPE_6__ {char* usermap; char* ident_user; char* pg_role; int /*<<< orphan*/  re; } ;
typedef  TYPE_2__ IdentLine ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_REGULAR_EXPRESSION ; 
 int /*<<< orphan*/  LOG ; 
 int REG_NOMATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char*,char const*) ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 scalar_t__ FUNC13 (char*,char const*) ; 
 int FUNC14 (char const*) ; 
 char* FUNC15 (char*,char*) ; 

__attribute__((used)) static void
FUNC16(IdentLine *identLine, const char *usermap_name,
					const char *pg_role, const char *ident_user,
					bool case_insensitive, bool *found_p, bool *error_p)
{
	*found_p = false;
	*error_p = false;

	if (FUNC13(identLine->usermap, usermap_name) != 0)
		/* Line does not match the map name we're looking for, so just abort */
		return;

	/* Match? */
	if (identLine->ident_user[0] == '/')
	{
		/*
		 * When system username starts with a slash, treat it as a regular
		 * expression. In this case, we process the system username as a
		 * regular expression that returns exactly one match. This is replaced
		 * for \1 in the database username string, if present.
		 */
		int			r;
		regmatch_t	matches[2];
		pg_wchar   *wstr;
		int			wlen;
		char	   *ofs;
		char	   *regexp_pgrole;

		wstr = FUNC4((FUNC14(ident_user) + 1) * sizeof(pg_wchar));
		wlen = FUNC7(ident_user, wstr, FUNC14(ident_user));

		r = FUNC9(&identLine->re, wstr, wlen, 0, NULL, 2, matches, 0);
		if (r)
		{
			char		errstr[100];

			if (r != REG_NOMATCH)
			{
				/* REG_NOMATCH is not an error, everything else is */
				FUNC8(r, &identLine->re, errstr, sizeof(errstr));
				FUNC0(LOG,
						(FUNC1(ERRCODE_INVALID_REGULAR_EXPRESSION),
						 FUNC2("regular expression match for \"%s\" failed: %s",
								identLine->ident_user + 1, errstr)));
				*error_p = true;
			}

			FUNC6(wstr);
			return;
		}
		FUNC6(wstr);

		if ((ofs = FUNC15(identLine->pg_role, "\\1")) != NULL)
		{
			int			offset;

			/* substitution of the first argument requested */
			if (matches[1].rm_so < 0)
			{
				FUNC0(LOG,
						(FUNC1(ERRCODE_INVALID_REGULAR_EXPRESSION),
						 FUNC2("regular expression \"%s\" has no subexpressions as requested by backreference in \"%s\"",
								identLine->ident_user + 1, identLine->pg_role)));
				*error_p = true;
				return;
			}

			/*
			 * length: original length minus length of \1 plus length of match
			 * plus null terminator
			 */
			regexp_pgrole = FUNC5(FUNC14(identLine->pg_role) - 2 + (matches[1].rm_eo - matches[1].rm_so) + 1);
			offset = ofs - identLine->pg_role;
			FUNC3(regexp_pgrole, identLine->pg_role, offset);
			FUNC3(regexp_pgrole + offset,
				   ident_user + matches[1].rm_so,
				   matches[1].rm_eo - matches[1].rm_so);
			FUNC12(regexp_pgrole, ofs + 2);
		}
		else
		{
			/* no substitution, so copy the match */
			regexp_pgrole = FUNC11(identLine->pg_role);
		}

		/*
		 * now check if the username actually matched what the user is trying
		 * to connect as
		 */
		if (case_insensitive)
		{
			if (FUNC10(regexp_pgrole, pg_role) == 0)
				*found_p = true;
		}
		else
		{
			if (FUNC13(regexp_pgrole, pg_role) == 0)
				*found_p = true;
		}
		FUNC6(regexp_pgrole);

		return;
	}
	else
	{
		/* Not regular expression, so make complete match */
		if (case_insensitive)
		{
			if (FUNC10(identLine->pg_role, pg_role) == 0 &&
				FUNC10(identLine->ident_user, ident_user) == 0)
				*found_p = true;
		}
		else
		{
			if (FUNC13(identLine->pg_role, pg_role) == 0 &&
				FUNC13(identLine->ident_user, ident_user) == 0)
				*found_p = true;
		}
	}
	return;
}