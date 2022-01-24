#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_17__ {scalar_t__ cbSize; int fMask; scalar_t__ lpText; } ;
struct TYPE_16__ {int /*<<< orphan*/ * lpText; } ;
struct TYPE_15__ {scalar_t__ uNumBands; int /*<<< orphan*/  hwndSelf; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ REBAR_BAND ;
typedef  TYPE_3__ REBARBANDINFOW ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  scalar_t__ INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int RBBIM_CHILDSIZE ; 
 int RBBIM_IMAGE ; 
 int RBBIM_SIZE ; 
 int RBBIM_STYLE ; 
 int RBBIM_TEXT ; 
 scalar_t__ REBARBANDINFOA_V3_SIZE ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_3__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT
FUNC12(REBAR_INFO *infoPtr, INT iBand, const REBARBANDINFOW *lprbbi, BOOL bUnicode)
{
    REBAR_BAND *lpBand;
    UINT uChanged;

    if (!lprbbi || lprbbi->cbSize < REBARBANDINFOA_V3_SIZE)
	return FALSE;

    if (iBand >= infoPtr->uNumBands)
	return FALSE;

    FUNC11("index %d\n", iBand);
    FUNC4 (lprbbi);

    /* set band information */
    lpBand = FUNC5(infoPtr, iBand);

    uChanged = FUNC2 (infoPtr->hwndSelf, lprbbi, lpBand);
    if (lprbbi->fMask & RBBIM_TEXT) {
        LPWSTR wstr = NULL;
        if (bUnicode)
            FUNC10(&wstr, lprbbi->lpText);
        else
            FUNC9(&wstr, (LPSTR)lprbbi->lpText);

        if (FUNC8(wstr, lpBand->lpText)) {
            FUNC0(lpBand->lpText);
            lpBand->lpText = wstr;
            uChanged |= RBBIM_TEXT;
        }
        else
            FUNC0(wstr);
    }

    FUNC7 (infoPtr, lpBand);

    FUNC3 (infoPtr);

    if (uChanged & (RBBIM_CHILDSIZE | RBBIM_SIZE | RBBIM_STYLE | RBBIM_IMAGE)) {
	  FUNC6(infoPtr);
	  FUNC1(infoPtr->hwndSelf, NULL, TRUE);
    }

    return TRUE;
}