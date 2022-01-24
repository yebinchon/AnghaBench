#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pg_wchar ;
typedef  int /*<<< orphan*/  errstr ;
struct TYPE_8__ {int line_num; scalar_t__ fields; } ;
typedef  TYPE_1__ TokenizedLine ;
struct TYPE_10__ {int /*<<< orphan*/  string; } ;
struct TYPE_9__ {int linenumber; char* ident_user; int /*<<< orphan*/  re; void* pg_role; void* usermap; } ;
typedef  int /*<<< orphan*/  ListCell ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ IdentLine ;
typedef  TYPE_3__ HbaToken ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  C_COLLATION_OID ; 
 int /*<<< orphan*/  ERRCODE_INVALID_REGULAR_EXPRESSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  REG_ADVANCED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 
 TYPE_2__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (char*,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (char*) ; 

__attribute__((used)) static IdentLine *
FUNC18(TokenizedLine *tok_line)
{
	int			line_num = tok_line->line_num;
	ListCell   *field;
	List	   *tokens;
	HbaToken   *token;
	IdentLine  *parsedline;

	FUNC0(tok_line->fields != NIL);
	field = FUNC8(tok_line->fields);

	parsedline = FUNC11(sizeof(IdentLine));
	parsedline->linenumber = line_num;

	/* Get the map token (must exist) */
	tokens = FUNC6(field);
	FUNC2(tokens);
	token = FUNC7(tokens);
	parsedline->usermap = FUNC16(token->string);

	/* Get the ident user token */
	field = FUNC9(tok_line->fields, field);
	FUNC1(field);
	tokens = FUNC6(field);
	FUNC2(tokens);
	token = FUNC7(tokens);
	parsedline->ident_user = FUNC16(token->string);

	/* Get the PG rolename token */
	field = FUNC9(tok_line->fields, field);
	FUNC1(field);
	tokens = FUNC6(field);
	FUNC2(tokens);
	token = FUNC7(tokens);
	parsedline->pg_role = FUNC16(token->string);

	if (parsedline->ident_user[0] == '/')
	{
		/*
		 * When system username starts with a slash, treat it as a regular
		 * expression. Pre-compile it.
		 */
		int			r;
		pg_wchar   *wstr;
		int			wlen;

		wstr = FUNC10((FUNC17(parsedline->ident_user + 1) + 1) * sizeof(pg_wchar));
		wlen = FUNC13(parsedline->ident_user + 1,
									wstr, FUNC17(parsedline->ident_user + 1));

		r = FUNC14(&parsedline->re, wstr, wlen, REG_ADVANCED, C_COLLATION_OID);
		if (r)
		{
			char		errstr[100];

			FUNC15(r, &parsedline->re, errstr, sizeof(errstr));
			FUNC3(LOG,
					(FUNC4(ERRCODE_INVALID_REGULAR_EXPRESSION),
					 FUNC5("invalid regular expression \"%s\": %s",
							parsedline->ident_user + 1, errstr)));

			FUNC12(wstr);
			return NULL;
		}
		FUNC12(wstr);
	}

	return parsedline;
}