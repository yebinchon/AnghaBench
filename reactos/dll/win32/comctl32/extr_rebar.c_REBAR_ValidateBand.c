
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ UINT ;
struct TYPE_16__ {int fStatus; int cxMinChild; int cyMinChild; int cx; int cyChild; int cyIntegral; int cxIdeal; int cxHeader; int fStyle; int iImage; int fMask; scalar_t__ cxMinBand; int cyHeader; scalar_t__ lpText; scalar_t__ cyMinBand; } ;
struct TYPE_13__ {scalar_t__ cy; scalar_t__ cx; } ;
struct TYPE_15__ {scalar_t__ uNumBands; int dwStyle; int hFont; TYPE_1__ imageSize; scalar_t__ himl; } ;
struct TYPE_14__ {scalar_t__ cy; scalar_t__ cx; } ;
typedef TYPE_2__ SIZE ;
typedef TYPE_3__ REBAR_INFO ;
typedef TYPE_4__ REBAR_BAND ;
typedef int HFONT ;
typedef int HDC ;


 int CCS_VERT ;
 scalar_t__ CHEVRON_WIDTH ;
 scalar_t__ GRIPPER_HEIGHT ;
 scalar_t__ GRIPPER_WIDTH ;
 int GetDC (int ) ;
 int GetTextExtentPoint32W (int ,scalar_t__,int ,TYPE_2__*) ;
 int HAS_GRIPPER ;
 int HAS_IMAGE ;
 int HAS_TEXT ;
 int HIDDENBAND (TYPE_4__*) ;
 int RBBIM_TEXT ;
 int RBBS_FIXEDSIZE ;
 int RBBS_GRIPPERALWAYS ;
 int RBBS_HIDETITLE ;
 int RBBS_NOGRIPPER ;
 int RBBS_UNDOC_FIXEDHEADER ;
 int RBBS_USECHEVRON ;
 int RBS_VERTICALGRIPPER ;
 scalar_t__ REBAR_ALWAYS_SPACE ;
 TYPE_4__* REBAR_GetBand (TYPE_3__ const*,scalar_t__) ;
 scalar_t__ REBAR_POST_CHILD ;
 scalar_t__ REBAR_POST_IMAGE ;
 scalar_t__ REBAR_POST_TEXT ;
 scalar_t__ REBAR_PRE_GRIPPER ;
 int ReleaseDC (int ,int ) ;
 int SelectObject (int ,int ) ;
 int lstrlenW (scalar_t__) ;
 int max (scalar_t__,scalar_t__) ;
 int update_min_band_height (TYPE_3__ const*,TYPE_4__*) ;

__attribute__((used)) static VOID
REBAR_ValidateBand (const REBAR_INFO *infoPtr, REBAR_BAND *lpBand)



{
    UINT header=0;
    UINT textheight=0, imageheight = 0;
    UINT i, nonfixed;
    REBAR_BAND *tBand;

    lpBand->fStatus = 0;
    lpBand->cxMinBand = 0;
    lpBand->cyMinBand = 0;
    if (lpBand->cxMinChild > 65535) lpBand->cxMinChild = 0;
    if (lpBand->cyMinChild > 65535) lpBand->cyMinChild = 0;
    if (lpBand->cx > 65535) lpBand->cx = 0;
    if (lpBand->cyChild > 65535) lpBand->cyChild = 0;
    if (lpBand->cyIntegral > 65535) lpBand->cyIntegral = 0;
    if (lpBand->cxIdeal > 65535) lpBand->cxIdeal = 0;
    if (lpBand->cxHeader > 65535) lpBand->cxHeader = 0;
    nonfixed = 0;
    for (i=0; i<infoPtr->uNumBands; i++){
 tBand = REBAR_GetBand(infoPtr, i);
 if (!HIDDENBAND(tBand) && !(tBand->fStyle & RBBS_FIXEDSIZE))
     nonfixed++;
    }


    if ( (!(lpBand->fStyle & RBBS_NOGRIPPER)) &&
   ( (lpBand->fStyle & RBBS_GRIPPERALWAYS) ||
     ( !(lpBand->fStyle & RBBS_FIXEDSIZE) && (nonfixed > 1)))
       ) {
 lpBand->fStatus |= HAS_GRIPPER;
        if (infoPtr->dwStyle & CCS_VERT)
     if (infoPtr->dwStyle & RBS_VERTICALGRIPPER)
                header += (GRIPPER_HEIGHT + REBAR_PRE_GRIPPER);
            else
         header += (GRIPPER_WIDTH + REBAR_PRE_GRIPPER);
        else
            header += (REBAR_PRE_GRIPPER + GRIPPER_WIDTH);

        header += REBAR_ALWAYS_SPACE;
    }


    if (lpBand->iImage != -1 && (infoPtr->himl)) {
 lpBand->fStatus |= HAS_IMAGE;
        if (infoPtr->dwStyle & CCS_VERT) {
    header += (infoPtr->imageSize.cy + REBAR_POST_IMAGE);
           imageheight = infoPtr->imageSize.cx + 4;
 }
 else {
    header += (infoPtr->imageSize.cx + REBAR_POST_IMAGE);
           imageheight = infoPtr->imageSize.cy + 4;
 }
    }


    if ((lpBand->fMask & RBBIM_TEXT) && (lpBand->lpText) &&
        !(lpBand->fStyle & RBBS_HIDETITLE)) {
 HDC hdc = GetDC (0);
 HFONT hOldFont = SelectObject (hdc, infoPtr->hFont);
 SIZE size;

 lpBand->fStatus |= HAS_TEXT;
 GetTextExtentPoint32W (hdc, lpBand->lpText,
          lstrlenW (lpBand->lpText), &size);
 header += ((infoPtr->dwStyle & CCS_VERT) ? (size.cy + REBAR_POST_TEXT) : (size.cx + REBAR_POST_TEXT));
 textheight = (infoPtr->dwStyle & CCS_VERT) ? 0 : size.cy;

 SelectObject (hdc, hOldFont);
 ReleaseDC (0, hdc);
    }


    if ((lpBand->fStatus & (HAS_IMAGE | HAS_TEXT)) &&
 !(lpBand->fStatus & HAS_GRIPPER)) {
 header += REBAR_ALWAYS_SPACE;
    }


    if (!(lpBand->fStyle & RBBS_UNDOC_FIXEDHEADER))
        lpBand->cxHeader = header;
    lpBand->cyHeader = max(textheight, imageheight);


    update_min_band_height(infoPtr, lpBand);

    lpBand->cxMinBand = lpBand->cxMinChild + lpBand->cxHeader + REBAR_POST_CHILD;
    if (lpBand->fStyle & RBBS_USECHEVRON && lpBand->cxMinChild < lpBand->cxIdeal)
        lpBand->cxMinBand += CHEVRON_WIDTH;
}
