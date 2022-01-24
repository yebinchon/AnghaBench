#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wchar_t ;
typedef  TYPE_2__* pg_locale_t ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  scalar_t__ UChar ;
struct TYPE_7__ {int /*<<< orphan*/  lt; } ;
struct TYPE_8__ {scalar_t__ provider; TYPE_1__ info; } ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 scalar_t__ COLLPROVIDER_ICU ; 
 scalar_t__ DEFAULT_COLLATION_OID ; 
 int /*<<< orphan*/  ERRCODE_INDETERMINATE_COLLATION ; 
 int /*<<< orphan*/  ERRCODE_OUT_OF_MEMORY ; 
 int /*<<< orphan*/  ERROR ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 char* FUNC1 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,size_t,char const*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__**,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char**,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__**,char const*,size_t) ; 
 int FUNC10 (unsigned char) ; 
 int FUNC11 (unsigned char,int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__) ; 
 int FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 char* FUNC15 (size_t) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*) ; 
 size_t FUNC17 () ; 
 TYPE_2__* FUNC18 (scalar_t__) ; 
 char FUNC19 (unsigned char) ; 
 char FUNC20 (unsigned char) ; 
 char* FUNC21 (char const*,size_t) ; 
 char FUNC22 (unsigned char,int /*<<< orphan*/ ) ; 
 char FUNC23 (unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (scalar_t__) ; 
 scalar_t__ FUNC25 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (scalar_t__) ; 
 scalar_t__ FUNC27 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u_strToTitle_default_BI ; 
 int /*<<< orphan*/  FUNC28 (char*,scalar_t__*,size_t,TYPE_2__*) ; 

char *
FUNC29(const char *buff, size_t nbytes, Oid collid)
{
	char	   *result;
	int			wasalnum = false;

	if (!buff)
		return NULL;

	/* C/POSIX collations use this path regardless of database encoding */
	if (FUNC14(collid))
	{
		result = FUNC1(buff, nbytes);
	}
	else
	{
		pg_locale_t mylocale = 0;

		if (collid != DEFAULT_COLLATION_OID)
		{
			if (!FUNC0(collid))
			{
				/*
				 * This typically means that the parser could not resolve a
				 * conflict of implicit collations, so report it that way.
				 */
				FUNC3(ERROR,
						(FUNC4(ERRCODE_INDETERMINATE_COLLATION),
						 FUNC6("could not determine which collation to use for %s function",
								"initcap()"),
						 FUNC5("Use the COLLATE clause to set the collation explicitly.")));
			}
			mylocale = FUNC18(collid);
		}

#ifdef USE_ICU
		if (mylocale && mylocale->provider == COLLPROVIDER_ICU)
		{
			int32_t		len_uchar,
						len_conv;
			UChar	   *buff_uchar;
			UChar	   *buff_conv;

			len_uchar = icu_to_uchar(&buff_uchar, buff, nbytes);
			len_conv = icu_convert_case(u_strToTitle_default_BI, mylocale,
										&buff_conv, buff_uchar, len_uchar);
			icu_from_uchar(&result, buff_conv, len_conv);
			pfree(buff_uchar);
			pfree(buff_conv);
		}
		else
#endif
		{
			if (FUNC17() > 1)
			{
				wchar_t    *workspace;
				size_t		curr_char;
				size_t		result_size;

				/* Overflow paranoia */
				if ((nbytes + 1) > (INT_MAX / sizeof(wchar_t)))
					FUNC3(ERROR,
							(FUNC4(ERRCODE_OUT_OF_MEMORY),
							 FUNC6("out of memory")));

				/* Output workspace cannot have more codes than input bytes */
				workspace = (wchar_t *) FUNC15((nbytes + 1) * sizeof(wchar_t));

				FUNC2(workspace, nbytes + 1, buff, nbytes, mylocale);

				for (curr_char = 0; workspace[curr_char] != 0; curr_char++)
				{
#ifdef HAVE_LOCALE_T
					if (mylocale)
					{
						if (wasalnum)
							workspace[curr_char] = towlower_l(workspace[curr_char], mylocale->info.lt);
						else
							workspace[curr_char] = towupper_l(workspace[curr_char], mylocale->info.lt);
						wasalnum = iswalnum_l(workspace[curr_char], mylocale->info.lt);
					}
					else
#endif
					{
						if (wasalnum)
							workspace[curr_char] = FUNC24(workspace[curr_char]);
						else
							workspace[curr_char] = FUNC26(workspace[curr_char]);
						wasalnum = FUNC12(workspace[curr_char]);
					}
				}

				/*
				 * Make result large enough; case change might change number
				 * of bytes
				 */
				result_size = curr_char * FUNC17() + 1;
				result = FUNC15(result_size);

				FUNC28(result, workspace, result_size, mylocale);
				FUNC16(workspace);
			}
			else
			{
				char	   *p;

				result = FUNC21(buff, nbytes);

				/*
				 * Note: we assume that toupper_l()/tolower_l() will not be so
				 * broken as to need guard tests.  When using the default
				 * collation, we apply the traditional Postgres behavior that
				 * forces ASCII-style treatment of I/i, but in non-default
				 * collations you get exactly what the collation says.
				 */
				for (p = result; *p; p++)
				{
#ifdef HAVE_LOCALE_T
					if (mylocale)
					{
						if (wasalnum)
							*p = tolower_l((unsigned char) *p, mylocale->info.lt);
						else
							*p = toupper_l((unsigned char) *p, mylocale->info.lt);
						wasalnum = isalnum_l((unsigned char) *p, mylocale->info.lt);
					}
					else
#endif
					{
						if (wasalnum)
							*p = FUNC19((unsigned char) *p);
						else
							*p = FUNC20((unsigned char) *p);
						wasalnum = FUNC10((unsigned char) *p);
					}
				}
			}
		}
	}

	return result;
}