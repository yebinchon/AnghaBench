
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ncm ;
struct TYPE_15__ {scalar_t__ lfWeight; } ;
struct TYPE_14__ {int clrBtnFace; int clrBtnText; } ;
struct TYPE_13__ {int style; int cy; int cx; int y; int x; } ;
struct TYPE_12__ {int cbSize; TYPE_9__ lfCaptionFont; } ;
struct TYPE_11__ {int iOldBand; int ichevronhotBand; int iGrabbedBand; int orgStyle; int dwStyle; scalar_t__ hDefaultFont; scalar_t__ hFont; int bands; scalar_t__ fStatus; void* hcurDrag; void* hcurVert; void* hcurHorz; void* hcurArrow; int DoRedraw; int hwndSelf; int clrBtnFace; int clrBtnText; void* clrText; void* clrBk; } ;
typedef int RECT ;
typedef TYPE_1__ REBAR_INFO ;
typedef TYPE_2__ NONCLIENTMETRICSW ;
typedef int LRESULT ;
typedef int LPWSTR ;
typedef int HWND ;
typedef scalar_t__ HFONT ;
typedef int DWORD_PTR ;
typedef TYPE_3__ CREATESTRUCTW ;


 TYPE_1__* Alloc (int) ;
 int CCS_LAYOUT_MASK ;
 int CCS_TOP ;
 void* CLR_NONE ;
 scalar_t__ CreateFontIndirectW (TYPE_9__*) ;
 int DPA_Create (int) ;
 int ERR (char*) ;
 int FALSE ;
 scalar_t__ FW_NORMAL ;
 int GWL_STYLE ;
 int GetClientRect (int ,int *) ;
 scalar_t__ GetStockObject (int ) ;
 int GetWindowRect (int ,int *) ;
 scalar_t__ IDC_ARROW ;
 scalar_t__ IDC_SIZE ;
 scalar_t__ IDC_SIZENS ;
 scalar_t__ IDC_SIZEWE ;
 void* LoadCursorW (int ,int ) ;
 int NF_REQUERY ;
 TYPE_1__* REBAR_GetInfoPtr (int ) ;
 int REBAR_NotifyFormat (TYPE_1__*,int ) ;
 int SPI_GETNONCLIENTMETRICS ;
 int SYSTEM_FONT ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int SetWindowLongW (int ,int ,int) ;
 int SystemParametersInfoW (int ,int,TYPE_2__*,int ) ;
 int TRACE (char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ TRACE_ON (int ) ;
 int TRUE ;
 int WS_VISIBLE ;
 TYPE_4__ comctl32_color ;
 int rebar ;
 int wine_dbgstr_rect (int *) ;

__attribute__((used)) static LRESULT
REBAR_NCCreate (HWND hwnd, const CREATESTRUCTW *cs)
{
    REBAR_INFO *infoPtr = REBAR_GetInfoPtr (hwnd);
    RECT wnrc1, clrc1;
    NONCLIENTMETRICSW ncm;
    HFONT tfont;

    if (infoPtr) {
 ERR("Strange info structure pointer *not* NULL\n");
 return FALSE;
    }

    if (TRACE_ON(rebar)) {
 GetWindowRect(hwnd, &wnrc1);
 GetClientRect(hwnd, &clrc1);
        TRACE("window=(%s) client=(%s) cs=(%d,%d %dx%d)\n",
              wine_dbgstr_rect(&wnrc1), wine_dbgstr_rect(&clrc1),
       cs->x, cs->y, cs->cx, cs->cy);
    }


    infoPtr = Alloc (sizeof(REBAR_INFO));
    SetWindowLongPtrW (hwnd, 0, (DWORD_PTR)infoPtr);


    infoPtr->clrBk = CLR_NONE;
    infoPtr->clrText = CLR_NONE;
    infoPtr->clrBtnText = comctl32_color.clrBtnText;
    infoPtr->clrBtnFace = comctl32_color.clrBtnFace;
    infoPtr->iOldBand = -1;
    infoPtr->ichevronhotBand = -2;
    infoPtr->iGrabbedBand = -1;
    infoPtr->hwndSelf = hwnd;
    infoPtr->DoRedraw = TRUE;
    infoPtr->hcurArrow = LoadCursorW (0, (LPWSTR)IDC_ARROW);
    infoPtr->hcurHorz = LoadCursorW (0, (LPWSTR)IDC_SIZEWE);
    infoPtr->hcurVert = LoadCursorW (0, (LPWSTR)IDC_SIZENS);
    infoPtr->hcurDrag = LoadCursorW (0, (LPWSTR)IDC_SIZE);
    infoPtr->fStatus = 0;
    infoPtr->hFont = GetStockObject (SYSTEM_FONT);
    infoPtr->bands = DPA_Create(8);


    REBAR_NotifyFormat(infoPtr, NF_REQUERY);


    infoPtr->orgStyle = cs->style;

    infoPtr->dwStyle = cs->style | WS_VISIBLE;
    if ((infoPtr->dwStyle & CCS_LAYOUT_MASK) == 0)
        infoPtr->dwStyle |= CCS_TOP;
    SetWindowLongW (hwnd, GWL_STYLE, infoPtr->dwStyle);


    ncm.cbSize = sizeof(ncm);
    SystemParametersInfoW (SPI_GETNONCLIENTMETRICS, ncm.cbSize, &ncm, 0);

    if (ncm.lfCaptionFont.lfWeight > FW_NORMAL) {
 ncm.lfCaptionFont.lfWeight = FW_NORMAL;
    }
    tfont = CreateFontIndirectW (&ncm.lfCaptionFont);
    if (tfont) {
        infoPtr->hFont = infoPtr->hDefaultFont = tfont;
    }

    return TRUE;
}
