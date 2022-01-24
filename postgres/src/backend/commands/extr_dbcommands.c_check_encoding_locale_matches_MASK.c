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
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int PG_SQL_ASCII ; 
 int PG_UTF8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,int) ; 
 scalar_t__ FUNC6 () ; 

void
FUNC7(int encoding, const char *collate, const char *ctype)
{
	int			ctype_encoding = FUNC5(ctype, true);
	int			collate_encoding = FUNC5(collate, true);

	if (!(ctype_encoding == encoding ||
		  ctype_encoding == PG_SQL_ASCII ||
		  ctype_encoding == -1 ||
#ifdef WIN32
		  encoding == PG_UTF8 ||
#endif
		  (encoding == PG_SQL_ASCII && FUNC6())))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("encoding \"%s\" does not match locale \"%s\"",
						FUNC4(encoding),
						ctype),
				 FUNC2("The chosen LC_CTYPE setting requires encoding \"%s\".",
						   FUNC4(ctype_encoding))));

	if (!(collate_encoding == encoding ||
		  collate_encoding == PG_SQL_ASCII ||
		  collate_encoding == -1 ||
#ifdef WIN32
		  encoding == PG_UTF8 ||
#endif
		  (encoding == PG_SQL_ASCII && FUNC6())))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("encoding \"%s\" does not match locale \"%s\"",
						FUNC4(encoding),
						collate),
				 FUNC2("The chosen LC_COLLATE setting requires encoding \"%s\".",
						   FUNC4(collate_encoding))));
}