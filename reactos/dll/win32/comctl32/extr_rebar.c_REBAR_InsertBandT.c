
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ cbSize; int fMask; scalar_t__ lpText; } ;
struct TYPE_20__ {scalar_t__ clrFore; scalar_t__ clrBack; int iImage; int fStyle; int cyMaxChild; int lpText; scalar_t__ cyIntegral; int cyMinChild; int cyChild; } ;
struct TYPE_19__ {int uNumBands; scalar_t__ clrText; scalar_t__ clrBtnText; scalar_t__ clrBk; scalar_t__ clrBtnFace; int hwndSelf; int bands; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ REBAR_BAND ;
typedef TYPE_3__ REBARBANDINFOW ;
typedef int LRESULT ;
typedef int LPSTR ;
typedef int INT ;
typedef scalar_t__ BOOL ;


 TYPE_2__* Alloc (int) ;
 scalar_t__ CLR_NONE ;
 int DPA_InsertPtr (int ,int,TYPE_2__*) ;
 int FALSE ;
 int Free (TYPE_2__*) ;
 int InvalidateRect (int ,int *,int ) ;
 int RBBIM_TEXT ;
 int RBBS_VARIABLEHEIGHT ;
 scalar_t__ REBARBANDINFOA_V3_SIZE ;
 scalar_t__ REBARBANDINFOA_V6_SIZE ;
 int REBAR_CommonSetupBand (int ,TYPE_3__ const*,TYPE_2__*) ;
 int REBAR_DumpBand (TYPE_1__*) ;
 int REBAR_DumpBandInfo (TYPE_3__ const*) ;
 TYPE_2__* REBAR_GetBand (TYPE_1__*,int ) ;
 int REBAR_Layout (TYPE_1__*) ;
 int REBAR_ValidateBand (TYPE_1__*,TYPE_2__*) ;
 int Str_SetPtrAtoW (int *,int ) ;
 int Str_SetPtrW (int *,scalar_t__) ;
 int TRACE (char*,int,...) ;
 int TRUE ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static LRESULT
REBAR_InsertBandT(REBAR_INFO *infoPtr, INT iIndex, const REBARBANDINFOW *lprbbi, BOOL bUnicode)
{
    REBAR_BAND *lpBand;

    if (!lprbbi || lprbbi->cbSize < REBARBANDINFOA_V3_SIZE)
 return FALSE;


    TRACE("insert band at %d (bUnicode=%d)!\n", iIndex, bUnicode);
    REBAR_DumpBandInfo(lprbbi);

    if (!(lpBand = Alloc(sizeof(REBAR_BAND)))) return FALSE;
    if ((iIndex == -1) || (iIndex > infoPtr->uNumBands))
        iIndex = infoPtr->uNumBands;
    if (DPA_InsertPtr(infoPtr->bands, iIndex, lpBand) == -1)
    {
        Free(lpBand);
        return FALSE;
    }
    infoPtr->uNumBands++;

    TRACE("index %d!\n", iIndex);


    memset(lpBand, 0, sizeof(*lpBand));
    lpBand->clrFore = infoPtr->clrText == CLR_NONE ? infoPtr->clrBtnText :
                                                     infoPtr->clrText;
    lpBand->clrBack = infoPtr->clrBk == CLR_NONE ? infoPtr->clrBtnFace :
                                                   infoPtr->clrBk;
    lpBand->iImage = -1;

    REBAR_CommonSetupBand(infoPtr->hwndSelf, lprbbi, lpBand);


    if (lprbbi->cbSize < REBARBANDINFOA_V6_SIZE || !(lpBand->fStyle & RBBS_VARIABLEHEIGHT)) {
        lpBand->cyChild = lpBand->cyMinChild;
        lpBand->cyMaxChild = 0x7fffffff;
        lpBand->cyIntegral = 0;
    }

    if ((lprbbi->fMask & RBBIM_TEXT) && (lprbbi->lpText)) {
        if (bUnicode)
            Str_SetPtrW(&lpBand->lpText, lprbbi->lpText);
        else
            Str_SetPtrAtoW(&lpBand->lpText, (LPSTR)lprbbi->lpText);
    }

    REBAR_ValidateBand (infoPtr, lpBand);

    if (infoPtr->uNumBands == 2)
 REBAR_ValidateBand (infoPtr, REBAR_GetBand(infoPtr, 0));

    REBAR_DumpBand (infoPtr);

    REBAR_Layout(infoPtr);
    InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);

    return TRUE;
}
