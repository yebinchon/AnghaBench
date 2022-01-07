
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int fMask; int fStyle; scalar_t__ clrFore; scalar_t__ clrBack; scalar_t__ iImage; scalar_t__ hwndChild; scalar_t__ cxMinChild; scalar_t__ cyMinChild; scalar_t__ cbSize; scalar_t__ cyChild; int cyMaxChild; scalar_t__ cyIntegral; scalar_t__ cx; scalar_t__ hbmBack; scalar_t__ wID; scalar_t__ cxIdeal; scalar_t__ lParam; scalar_t__ cxHeader; } ;
struct TYPE_6__ {int fMask; int fStyle; scalar_t__ clrFore; scalar_t__ clrBack; scalar_t__ iImage; scalar_t__ hwndChild; scalar_t__ cxMinChild; scalar_t__ cyMinChild; scalar_t__ cyChild; int cyMaxChild; scalar_t__ cyIntegral; scalar_t__ cx; scalar_t__ hbmBack; scalar_t__ wID; scalar_t__ cxIdeal; scalar_t__ lParam; scalar_t__ cxHeader; scalar_t__ hwndPrevParent; } ;
typedef TYPE_1__ REBAR_BAND ;
typedef TYPE_2__ REBARBANDINFOW ;
typedef int HWND ;


 int RBBIM_BACKGROUND ;
 int RBBIM_CHILD ;
 int RBBIM_CHILDSIZE ;
 int RBBIM_COLORS ;
 int RBBIM_HEADERSIZE ;
 int RBBIM_ID ;
 int RBBIM_IDEALSIZE ;
 int RBBIM_IMAGE ;
 int RBBIM_LPARAM ;
 int RBBIM_SIZE ;
 int RBBIM_STYLE ;
 int RBBS_UNDOC_FIXEDHEADER ;
 int RBBS_VARIABLEHEIGHT ;
 scalar_t__ REBARBANDINFOA_V6_SIZE ;
 int SW_SHOWNOACTIVATE ;
 int SW_SHOWNORMAL ;
 scalar_t__ SetParent (scalar_t__,int ) ;
 int ShowWindow (scalar_t__,int) ;
 int TRACE (char*,scalar_t__,scalar_t__) ;
 scalar_t__ round_child_height (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static UINT
REBAR_CommonSetupBand(HWND hwnd, const REBARBANDINFOW *lprbbi, REBAR_BAND *lpBand)



{
    UINT uChanged = 0x0;

    lpBand->fMask |= lprbbi->fMask;

    if( (lprbbi->fMask & RBBIM_STYLE) &&
        (lpBand->fStyle != lprbbi->fStyle ) )
    {
 lpBand->fStyle = lprbbi->fStyle;
        uChanged |= RBBIM_STYLE;
    }

    if( (lprbbi->fMask & RBBIM_COLORS) &&
       ( ( lpBand->clrFore != lprbbi->clrFore ) ||
         ( lpBand->clrBack != lprbbi->clrBack ) ) )
    {
 lpBand->clrFore = lprbbi->clrFore;
 lpBand->clrBack = lprbbi->clrBack;
        uChanged |= RBBIM_COLORS;
    }

    if( (lprbbi->fMask & RBBIM_IMAGE) &&
       ( lpBand->iImage != lprbbi->iImage ) )
    {
 lpBand->iImage = lprbbi->iImage;
        uChanged |= RBBIM_IMAGE;
    }

    if( (lprbbi->fMask & RBBIM_CHILD) &&
       (lprbbi->hwndChild != lpBand->hwndChild ) )
    {
 if (lprbbi->hwndChild) {
     lpBand->hwndChild = lprbbi->hwndChild;
     lpBand->hwndPrevParent =
  SetParent (lpBand->hwndChild, hwnd);

     ShowWindow(lpBand->hwndChild, SW_SHOWNOACTIVATE | SW_SHOWNORMAL);

 }
 else {
     TRACE("child: %p  prev parent: %p\n",
     lpBand->hwndChild, lpBand->hwndPrevParent);
     lpBand->hwndChild = 0;
     lpBand->hwndPrevParent = 0;
 }
        uChanged |= RBBIM_CHILD;
    }

    if( (lprbbi->fMask & RBBIM_CHILDSIZE) &&
        ( (lpBand->cxMinChild != lprbbi->cxMinChild) ||
          (lpBand->cyMinChild != lprbbi->cyMinChild ) ||
          ( (lprbbi->cbSize >= REBARBANDINFOA_V6_SIZE && (lpBand->fStyle & RBBS_VARIABLEHEIGHT)) &&
            ( (lpBand->cyChild != lprbbi->cyChild ) ||
              (lpBand->cyMaxChild != lprbbi->cyMaxChild ) ||
              (lpBand->cyIntegral != lprbbi->cyIntegral ) ) ) ||
          ( (lprbbi->cbSize < REBARBANDINFOA_V6_SIZE) &&
            ( (lpBand->cyChild ||
               lpBand->cyMaxChild ||
               lpBand->cyIntegral ) ) ) ) )
    {
 lpBand->cxMinChild = lprbbi->cxMinChild;
 lpBand->cyMinChild = lprbbi->cyMinChild;

        if (lprbbi->cbSize >= REBARBANDINFOA_V6_SIZE && (lpBand->fStyle & RBBS_VARIABLEHEIGHT)) {
     lpBand->cyMaxChild = lprbbi->cyMaxChild;
            lpBand->cyIntegral = lprbbi->cyIntegral;

            lpBand->cyChild = round_child_height(lpBand, lprbbi->cyChild);
        }
 else {
     lpBand->cyChild = lpBand->cyMinChild;
     lpBand->cyMaxChild = 0x7fffffff;
     lpBand->cyIntegral = 0;
 }
        uChanged |= RBBIM_CHILDSIZE;
    }

    if( (lprbbi->fMask & RBBIM_SIZE) &&
        (lpBand->cx != lprbbi->cx ) )
    {
 lpBand->cx = lprbbi->cx;
        uChanged |= RBBIM_SIZE;
    }

    if( (lprbbi->fMask & RBBIM_BACKGROUND) &&
       ( lpBand->hbmBack != lprbbi->hbmBack ) )
    {
 lpBand->hbmBack = lprbbi->hbmBack;
        uChanged |= RBBIM_BACKGROUND;
    }

    if( (lprbbi->fMask & RBBIM_ID) &&
        (lpBand->wID != lprbbi->wID ) )
    {
 lpBand->wID = lprbbi->wID;
        uChanged |= RBBIM_ID;
    }


    if (lprbbi->cbSize >= REBARBANDINFOA_V6_SIZE) {
 if( (lprbbi->fMask & RBBIM_IDEALSIZE) &&
            ( lpBand->cxIdeal != lprbbi->cxIdeal ) )
        {
     lpBand->cxIdeal = lprbbi->cxIdeal;
            uChanged |= RBBIM_IDEALSIZE;
        }

 if( (lprbbi->fMask & RBBIM_LPARAM) &&
            (lpBand->lParam != lprbbi->lParam ) )
        {
     lpBand->lParam = lprbbi->lParam;
            uChanged |= RBBIM_LPARAM;
        }

 if( (lprbbi->fMask & RBBIM_HEADERSIZE) &&
            (lpBand->cxHeader != lprbbi->cxHeader ) )
        {
     lpBand->cxHeader = lprbbi->cxHeader;
            lpBand->fStyle |= RBBS_UNDOC_FIXEDHEADER;
            uChanged |= RBBIM_HEADERSIZE;
        }
    }

    return uChanged;
}
