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
typedef  int /*<<< orphan*/  SV ;
typedef  int /*<<< orphan*/  STRLEN ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ PG_SQL_ASCII ; 
 scalar_t__ SVt_PVFM ; 
 scalar_t__ SVt_PVLV ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dTHX ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline char *
FUNC10(SV *sv)
{
	dTHX;
	char	   *val,
			   *res;
	STRLEN		len;

	/*
	 * get a utf8 encoded char * out of perl. *note* it may not be valid utf8!
	 */

	/*
	 * SvPVutf8() croaks nastily on certain things, like typeglobs and
	 * readonly objects such as $^V. That's a perl bug - it's not supposed to
	 * happen. To avoid crashing the backend, we make a copy of the sv before
	 * passing it to SvPVutf8(). The copy is garbage collected when we're done
	 * with it.
	 */
	if (FUNC3(sv) ||
		FUNC7(sv) ||
		(FUNC6(sv) > SVt_PVLV && FUNC6(sv) != SVt_PVFM))
		sv = FUNC8(sv);
	else
	{
		/*
		 * increase the reference count so we can just SvREFCNT_dec() it when
		 * we are done
		 */
		FUNC5(sv);
	}

	/*
	 * Request the string from Perl, in UTF-8 encoding; but if we're in a
	 * SQL_ASCII database, just request the byte soup without trying to make
	 * it UTF8, because that might fail.
	 */
	if (FUNC0() == PG_SQL_ASCII)
		val = FUNC1(sv, len);
	else
		val = FUNC2(sv, len);

	/*
	 * Now convert to database encoding.  We use perl's length in the event we
	 * had an embedded null byte to ensure we error out properly.
	 */
	res = FUNC9(val, len);

	/* safe now to garbage collect the new SV */
	FUNC4(sv);

	return res;
}