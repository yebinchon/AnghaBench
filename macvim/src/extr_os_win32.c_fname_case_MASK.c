#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char char_u ;
struct TYPE_4__ {char* cFileName; char* cAlternateFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 char NUL ; 
 scalar_t__ OK ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 int _MAX_PATH ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int enc_codepage ; 
 scalar_t__ enc_dbcs ; 
 char* FUNC7 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,int) ; 
 scalar_t__ FUNC9 (char) ; 
 int FUNC10 (char*) ; 
 char psepc ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int FUNC13 (char*) ; 
 int FUNC14 (char*) ; 
 char* FUNC15 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 

void
FUNC19(
    char_u	*name,
    int		len)
{
    char		szTrueName[_MAX_PATH + 2];
    char		szTrueNameTemp[_MAX_PATH + 2];
    char		*ptrue, *ptruePrev;
    char		*porig, *porigPrev;
    int			flen;
    WIN32_FIND_DATA	fb;
    HANDLE		hFind;
    int			c;
    int			slen;

    flen = (int)FUNC5(name);
    if (flen == 0)
	return;

    FUNC11(name);

#ifdef FEAT_MBYTE
    if (enc_codepage >= 0 && (int)GetACP() != enc_codepage)
    {
	WCHAR	*p = enc_to_utf16(name, NULL);

	if (p != NULL)
	{
	    char_u	*q;
	    WCHAR	buf[_MAX_PATH + 2];

	    wcscpy(buf, p);
	    vim_free(p);

	    if (fname_casew(buf, (len > 0) ? _MAX_PATH : 0) == OK)
	    {
		q = utf16_to_enc(buf, NULL);
		if (q != NULL)
		{
		    vim_strncpy(name, q, (len > 0) ? len - 1 : flen);
		    vim_free(q);
		    return;
		}
	    }
	}
	/* Retry with non-wide function (for Windows 98). */
    }
#endif

    /* If 'enc' is utf-8, flen can be larger than _MAX_PATH.
     * So we should check this after calling wide function. */
    if (flen > _MAX_PATH)
	return;

    /* Build the new name in szTrueName[] one component at a time. */
    porig = name;
    ptrue = szTrueName;

    if (FUNC9(porig[0]) && porig[1] == ':')
    {
	/* copy leading drive letter */
	*ptrue++ = *porig++;
	*ptrue++ = *porig++;
    }
    *ptrue = NUL;	    /* in case nothing follows */

    while (*porig != NUL)
    {
	/* copy \ characters */
	while (*porig == psepc)
	    *ptrue++ = *porig++;

	ptruePrev = ptrue;
	porigPrev = porig;
	while (*porig != NUL && *porig != psepc)
	{
#ifdef FEAT_MBYTE
	    int l;

	    if (enc_dbcs)
	    {
		l = (*mb_ptr2len)(porig);
		while (--l >= 0)
		    *ptrue++ = *porig++;
	    }
	    else
#endif
		*ptrue++ = *porig++;
	}
	*ptrue = NUL;

	/* To avoid a slow failure append "\*" when searching a directory,
	 * server or network share. */
	FUNC4(szTrueNameTemp, szTrueName);
	slen = (int)FUNC13(szTrueNameTemp);
	if (*porig == psepc && slen + 2 < _MAX_PATH)
	    FUNC4(szTrueNameTemp + slen, "\\*");

	/* Skip "", "." and "..". */
	if (ptrue > ptruePrev
		&& (ptruePrev[0] != '.'
		    || (ptruePrev[1] != NUL
			&& (ptruePrev[1] != '.' || ptruePrev[2] != NUL)))
		&& (hFind = FUNC1(szTrueNameTemp, &fb))
						      != INVALID_HANDLE_VALUE)
	{
	    c = *porig;
	    *porig = NUL;

	    /* Only use the match when it's the same name (ignoring case) or
	     * expansion is allowed and there is a match with the short name
	     * and there is enough room. */
	    if (FUNC6(porigPrev, fb.cFileName) == 0
		    || (len > 0
			&& (FUNC6(porigPrev, fb.cAlternateFileName) == 0
			    && (int)(ptruePrev - szTrueName)
					   + (int)FUNC13(fb.cFileName) < len)))
	    {
		FUNC4(ptruePrev, fb.cFileName);

		/* Look for exact match and prefer it if found.  Must be a
		 * long name, otherwise there would be only one match. */
		while (FUNC2(hFind, &fb))
		{
		    if (*fb.cAlternateFileName != NUL
			    && (FUNC12(porigPrev, fb.cFileName) == 0
				|| (len > 0
				    && (FUNC6(porigPrev,
						   fb.cAlternateFileName) == 0
				    && (int)(ptruePrev - szTrueName)
					 + (int)FUNC13(fb.cFileName) < len))))
		    {
			FUNC4(ptruePrev, fb.cFileName);
			break;
		    }
		}
	    }
	    FUNC0(hFind);
	    *porig = c;
	    ptrue = ptruePrev + FUNC13(ptruePrev);
	}
    }

    FUNC4(name, szTrueName);
}