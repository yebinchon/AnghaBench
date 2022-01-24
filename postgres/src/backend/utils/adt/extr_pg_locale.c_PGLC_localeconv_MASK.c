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
typedef  int /*<<< orphan*/  worklconv ;
struct lconv {void* negative_sign; void* positive_sign; void* mon_thousands_sep; void* mon_decimal_point; void* currency_symbol; void* int_curr_symbol; void* thousands_sep; void* decimal_point; int /*<<< orphan*/  n_sign_posn; int /*<<< orphan*/  p_sign_posn; int /*<<< orphan*/  n_sep_by_space; int /*<<< orphan*/  n_cs_precedes; int /*<<< orphan*/  p_sep_by_space; int /*<<< orphan*/  p_cs_precedes; int /*<<< orphan*/  frac_digits; int /*<<< orphan*/  int_frac_digits; void* mon_grouping; void* grouping; } ;

/* Variables and functions */
 int CurrentLocaleConvValid ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MONETARY ; 
 int /*<<< orphan*/  LC_NUMERIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int PG_SQL_ASCII ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct lconv*) ; 
 char* locale_monetary ; 
 char* locale_numeric ; 
 struct lconv* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct lconv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int FUNC13 (char*,int) ; 
 char* FUNC14 (char*) ; 
 char* FUNC15 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC16 (void*) ; 
 int /*<<< orphan*/  FUNC17 (struct lconv*) ; 

struct lconv *
FUNC18(void)
{
	static struct lconv CurrentLocaleConv;
	static bool CurrentLocaleConvAllocated = false;
	struct lconv *extlconv;
	struct lconv worklconv;
	char	   *save_lc_monetary;
	char	   *save_lc_numeric;
#ifdef WIN32
	char	   *save_lc_ctype;
#endif

	/* Did we do it already? */
	if (CurrentLocaleConvValid)
		return &CurrentLocaleConv;

	/* Free any already-allocated storage */
	if (CurrentLocaleConvAllocated)
	{
		FUNC9(&CurrentLocaleConv);
		CurrentLocaleConvAllocated = false;
	}

	/*
	 * This is tricky because we really don't want to risk throwing error
	 * while the locale is set to other than our usual settings.  Therefore,
	 * the process is: collect the usual settings, set locale to special
	 * setting, copy relevant data into worklconv using strdup(), restore
	 * normal settings, convert data to desired encoding, and finally stash
	 * the collected data in CurrentLocaleConv.  This makes it safe if we
	 * throw an error during encoding conversion or run out of memory anywhere
	 * in the process.  All data pointed to by struct lconv members is
	 * allocated with strdup, to avoid premature elog(ERROR) and to allow
	 * using a single cleanup routine.
	 */
	FUNC11(&worklconv, 0, sizeof(worklconv));

	/* Save prevailing values of monetary and numeric locales */
	save_lc_monetary = FUNC15(LC_MONETARY, NULL);
	if (!save_lc_monetary)
		FUNC5(ERROR, "setlocale(NULL) failed");
	save_lc_monetary = FUNC14(save_lc_monetary);

	save_lc_numeric = FUNC15(LC_NUMERIC, NULL);
	if (!save_lc_numeric)
		FUNC5(ERROR, "setlocale(NULL) failed");
	save_lc_numeric = FUNC14(save_lc_numeric);

#ifdef WIN32

	/*
	 * The POSIX standard explicitly says that it is undefined what happens if
	 * LC_MONETARY or LC_NUMERIC imply an encoding (codeset) different from
	 * that implied by LC_CTYPE.  In practice, all Unix-ish platforms seem to
	 * believe that localeconv() should return strings that are encoded in the
	 * codeset implied by the LC_MONETARY or LC_NUMERIC locale name.  Hence,
	 * once we have successfully collected the localeconv() results, we will
	 * convert them from that codeset to the desired server encoding.
	 *
	 * Windows, of course, resolutely does things its own way; on that
	 * platform LC_CTYPE has to match LC_MONETARY/LC_NUMERIC to get sane
	 * results.  Hence, we must temporarily set that category as well.
	 */

	/* Save prevailing value of ctype locale */
	save_lc_ctype = setlocale(LC_CTYPE, NULL);
	if (!save_lc_ctype)
		elog(ERROR, "setlocale(NULL) failed");
	save_lc_ctype = pstrdup(save_lc_ctype);

	/* Here begins the critical section where we must not throw error */

	/* use numeric to set the ctype */
	setlocale(LC_CTYPE, locale_numeric);
#endif

	/* Get formatting information for numeric */
	FUNC15(LC_NUMERIC, locale_numeric);
	extlconv = FUNC10();

	/* Must copy data now in case setlocale() overwrites it */
	worklconv.decimal_point = FUNC16(extlconv->decimal_point);
	worklconv.thousands_sep = FUNC16(extlconv->thousands_sep);
	worklconv.grouping = FUNC16(extlconv->grouping);

#ifdef WIN32
	/* use monetary to set the ctype */
	setlocale(LC_CTYPE, locale_monetary);
#endif

	/* Get formatting information for monetary */
	FUNC15(LC_MONETARY, locale_monetary);
	extlconv = FUNC10();

	/* Must copy data now in case setlocale() overwrites it */
	worklconv.int_curr_symbol = FUNC16(extlconv->int_curr_symbol);
	worklconv.currency_symbol = FUNC16(extlconv->currency_symbol);
	worklconv.mon_decimal_point = FUNC16(extlconv->mon_decimal_point);
	worklconv.mon_thousands_sep = FUNC16(extlconv->mon_thousands_sep);
	worklconv.mon_grouping = FUNC16(extlconv->mon_grouping);
	worklconv.positive_sign = FUNC16(extlconv->positive_sign);
	worklconv.negative_sign = FUNC16(extlconv->negative_sign);
	/* Copy scalar fields as well */
	worklconv.int_frac_digits = extlconv->int_frac_digits;
	worklconv.frac_digits = extlconv->frac_digits;
	worklconv.p_cs_precedes = extlconv->p_cs_precedes;
	worklconv.p_sep_by_space = extlconv->p_sep_by_space;
	worklconv.n_cs_precedes = extlconv->n_cs_precedes;
	worklconv.n_sep_by_space = extlconv->n_sep_by_space;
	worklconv.p_sign_posn = extlconv->p_sign_posn;
	worklconv.n_sign_posn = extlconv->n_sign_posn;

	/*
	 * Restore the prevailing locale settings; failure to do so is fatal.
	 * Possibly we could limp along with nondefault LC_MONETARY or LC_NUMERIC,
	 * but proceeding with the wrong value of LC_CTYPE would certainly be bad
	 * news; and considering that the prevailing LC_MONETARY and LC_NUMERIC
	 * are almost certainly "C", there's really no reason that restoring those
	 * should fail.
	 */
#ifdef WIN32
	if (!setlocale(LC_CTYPE, save_lc_ctype))
		elog(FATAL, "failed to restore LC_CTYPE to \"%s\"", save_lc_ctype);
#endif
	if (!FUNC15(LC_MONETARY, save_lc_monetary))
		FUNC5(FATAL, "failed to restore LC_MONETARY to \"%s\"", save_lc_monetary);
	if (!FUNC15(LC_NUMERIC, save_lc_numeric))
		FUNC5(FATAL, "failed to restore LC_NUMERIC to \"%s\"", save_lc_numeric);

	/*
	 * At this point we've done our best to clean up, and can call functions
	 * that might possibly throw errors with a clean conscience.  But let's
	 * make sure we don't leak any already-strdup'd fields in worklconv.
	 */
	FUNC3();
	{
		int			encoding;

		/* Release the pstrdup'd locale names */
		FUNC12(save_lc_monetary);
		FUNC12(save_lc_numeric);
#ifdef WIN32
		pfree(save_lc_ctype);
#endif

		/* If any of the preceding strdup calls failed, complain now. */
		if (!FUNC17(&worklconv))
			FUNC6(ERROR,
					(FUNC7(ERRCODE_OUT_OF_MEMORY),
					 FUNC8("out of memory")));

		/*
		 * Now we must perform encoding conversion from whatever's associated
		 * with the locales into the database encoding.  If we can't identify
		 * the encoding implied by LC_NUMERIC or LC_MONETARY (ie we get -1),
		 * use PG_SQL_ASCII, which will result in just validating that the
		 * strings are OK in the database encoding.
		 */
		encoding = FUNC13(locale_numeric, true);
		if (encoding < 0)
			encoding = PG_SQL_ASCII;

		FUNC4(encoding, &worklconv.decimal_point);
		FUNC4(encoding, &worklconv.thousands_sep);
		/* grouping is not text and does not require conversion */

		encoding = FUNC13(locale_monetary, true);
		if (encoding < 0)
			encoding = PG_SQL_ASCII;

		FUNC4(encoding, &worklconv.int_curr_symbol);
		FUNC4(encoding, &worklconv.currency_symbol);
		FUNC4(encoding, &worklconv.mon_decimal_point);
		FUNC4(encoding, &worklconv.mon_thousands_sep);
		/* mon_grouping is not text and does not require conversion */
		FUNC4(encoding, &worklconv.positive_sign);
		FUNC4(encoding, &worklconv.negative_sign);
	}
	FUNC0();
	{
		FUNC9(&worklconv);
		FUNC2();
	}
	FUNC1();

	/*
	 * Everything is good, so save the results.
	 */
	CurrentLocaleConv = worklconv;
	CurrentLocaleConvAllocated = true;
	CurrentLocaleConvValid = true;
	return &CurrentLocaleConv;
}