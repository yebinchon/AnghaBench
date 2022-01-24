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
typedef  int /*<<< orphan*/  wint_t ;
typedef  scalar_t__ wchar_t ;
typedef  int /*<<< orphan*/  pg_locale_t ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int WC_BUF_LEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*) ; 

int
FUNC6(const char *ptr)
{
	int			clen = FUNC5(ptr);
	wchar_t		character[WC_BUF_LEN];
	Oid			collation = DEFAULT_COLLATION_OID;	/* TODO */
	pg_locale_t mylocale = 0;	/* TODO */

	if (clen == 1 || FUNC4(collation))
		return FUNC2(FUNC0(ptr));

	FUNC1(character, WC_BUF_LEN, ptr, clen, mylocale);

	return FUNC3((wint_t) character[0]);
}