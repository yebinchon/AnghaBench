#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ cbSize; int fMask; scalar_t__ lpText; } ;
struct TYPE_20__ {scalar_t__ clrFore; scalar_t__ clrBack; int iImage; int fStyle; int cyMaxChild; int /*<<< orphan*/  lpText; scalar_t__ cyIntegral; int /*<<< orphan*/  cyMinChild; int /*<<< orphan*/  cyChild; } ;
struct TYPE_19__ {int uNumBands; scalar_t__ clrText; scalar_t__ clrBtnText; scalar_t__ clrBk; scalar_t__ clrBtnFace; int /*<<< orphan*/  hwndSelf; int /*<<< orphan*/  bands; } ;
typedef  TYPE_1__ REBAR_INFO ;
typedef  TYPE_2__ REBAR_BAND ;
typedef  TYPE_3__ REBARBANDINFOW ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPSTR ;
typedef  int INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 scalar_t__ CLR_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int RBBIM_TEXT ; 
 int RBBS_VARIABLEHEIGHT ; 
 scalar_t__ REBARBANDINFOA_V3_SIZE ; 
 scalar_t__ REBARBANDINFOA_V6_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__ const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__ const*) ; 
 TYPE_2__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static LRESULT
FUNC14(REBAR_INFO *infoPtr, INT iIndex, const REBARBANDINFOW *lprbbi, BOOL bUnicode)
{
    REBAR_BAND *lpBand;

    if (!lprbbi || lprbbi->cbSize < REBARBANDINFOA_V3_SIZE)
	return FALSE;

    /* trace the index as signed to see the -1 */
    FUNC12("insert band at %d (bUnicode=%d)!\n", iIndex, bUnicode);
    FUNC6(lprbbi);

    if (!(lpBand = FUNC0(sizeof(REBAR_BAND)))) return FALSE;
    if ((iIndex == -1) || (iIndex > infoPtr->uNumBands))
        iIndex = infoPtr->uNumBands;
    if (FUNC1(infoPtr->bands, iIndex, lpBand) == -1)
    {
        FUNC2(lpBand);
        return FALSE;
    }
    infoPtr->uNumBands++;

    FUNC12("index %d!\n", iIndex);

    /* initialize band */
    FUNC13(lpBand, 0, sizeof(*lpBand));
    lpBand->clrFore = infoPtr->clrText == CLR_NONE ? infoPtr->clrBtnText :
                                                     infoPtr->clrText;
    lpBand->clrBack = infoPtr->clrBk == CLR_NONE ? infoPtr->clrBtnFace :
                                                   infoPtr->clrBk;
    lpBand->iImage = -1;

    FUNC4(infoPtr->hwndSelf, lprbbi, lpBand);

    /* Make sure the defaults for these are correct */
    if (lprbbi->cbSize < REBARBANDINFOA_V6_SIZE || !(lpBand->fStyle & RBBS_VARIABLEHEIGHT)) {
        lpBand->cyChild    = lpBand->cyMinChild;
        lpBand->cyMaxChild = 0x7fffffff;
        lpBand->cyIntegral = 0;
    }

    if ((lprbbi->fMask & RBBIM_TEXT) && (lprbbi->lpText)) {
        if (bUnicode)
            FUNC11(&lpBand->lpText, lprbbi->lpText);
        else
            FUNC10(&lpBand->lpText, (LPSTR)lprbbi->lpText);
    }

    FUNC9 (infoPtr, lpBand);
    /* On insert of second band, revalidate band 1 to possible add gripper */
    if (infoPtr->uNumBands == 2)
	FUNC9 (infoPtr, FUNC7(infoPtr, 0));

    FUNC5 (infoPtr);

    FUNC8(infoPtr);
    FUNC3(infoPtr->hwndSelf, NULL, TRUE);

    return TRUE;
}