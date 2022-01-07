
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_16__ {int uDrawFlags; } ;
struct TYPE_15__ {scalar_t__ bottom; int right; scalar_t__ top; int left; scalar_t__ member_3; int member_2; scalar_t__ member_1; int member_0; } ;
struct TYPE_13__ {scalar_t__ bottom; scalar_t__ right; scalar_t__ top; scalar_t__ left; } ;
struct TYPE_14__ {int nMaxTipWidth; scalar_t__ szTipText; TYPE_1__ rcMargin; scalar_t__ pszTitle; int hTitleFont; int hTitleIcon; scalar_t__ bToolBelow; int hwndSelf; int hFont; int clrText; int clrBk; } ;
typedef TYPE_2__ TOOLTIPS_INFO ;
typedef TYPE_3__ RECT ;
typedef TYPE_4__ NMTTCUSTOMDRAW ;
typedef scalar_t__ INT ;
typedef int * HRGN ;
typedef int HFONT ;
typedef int HDC ;
typedef int * HBRUSH ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ BALLOON_ICON_TITLE_SPACING ;
 scalar_t__ BALLOON_STEMHEIGHT ;
 scalar_t__ BALLOON_TEXT_MARGIN ;
 scalar_t__ BALLOON_TITLE_TEXT_SPACING ;
 int CDDS_POSTPAINT ;
 int CDDS_PREPAINT ;
 int CDRF_NOTIFYPOSTPAINT ;
 int COLOR_WINDOWFRAME ;
 int * CreateRectRgn (int ,int ,int ,int ) ;
 int * CreateSolidBrush (int ) ;
 int DI_NORMAL ;
 int DT_BOTTOM ;
 int DT_EXTERNALLEADING ;
 int DT_NOPREFIX ;
 int DT_SINGLELINE ;
 int DT_WORDBREAK ;
 int DeleteObject (int *) ;
 scalar_t__ DrawIconEx (int ,int ,scalar_t__,int ,scalar_t__,scalar_t__,int ,int *,int ) ;
 int DrawTextW (int ,scalar_t__,int,TYPE_3__*,int) ;
 int FillRect (int ,TYPE_3__*,int *) ;
 int FillRgn (int ,int *,int *) ;
 int FrameRgn (int ,int *,int *,scalar_t__,scalar_t__) ;
 int GWL_STYLE ;
 int GetClientRect (int ,TYPE_3__*) ;
 int * GetSysColorBrush (int ) ;
 scalar_t__ GetSystemMetrics (int ) ;
 int GetWindowLongW (int ,int ) ;
 int GetWindowRgn (int ,int *) ;
 scalar_t__ ICON_HEIGHT ;
 scalar_t__ ICON_WIDTH ;
 scalar_t__ NORMAL_TEXT_MARGIN ;
 int SM_CXDLGFRAME ;
 int SM_CXEDGE ;
 int SM_CYDLGFRAME ;
 int SM_CYEDGE ;
 int SelectObject (int ,int ) ;
 scalar_t__ SetBkMode (int ,scalar_t__) ;
 int SetTextColor (int ,int ) ;
 int TOOLTIPS_customdraw_fill (TYPE_2__ const*,TYPE_4__*,int ,TYPE_3__*,int) ;
 int TOOLTIPS_notify_customdraw (int ,TYPE_4__*) ;
 scalar_t__ TRANSPARENT ;
 int TTS_BALLOON ;
 int TTS_NOPREFIX ;

__attribute__((used)) static void
TOOLTIPS_Refresh (const TOOLTIPS_INFO *infoPtr, HDC hdc)
{
    RECT rc;
    INT oldBkMode;
    HFONT hOldFont;
    HBRUSH hBrush;
    UINT uFlags = DT_EXTERNALLEADING;
    HRGN hRgn = ((void*)0);
    DWORD dwStyle = GetWindowLongW(infoPtr->hwndSelf, GWL_STYLE);
    NMTTCUSTOMDRAW nmttcd;
    DWORD cdmode;

    if (infoPtr->nMaxTipWidth > -1)
 uFlags |= DT_WORDBREAK;
    if (GetWindowLongW (infoPtr->hwndSelf, GWL_STYLE) & TTS_NOPREFIX)
 uFlags |= DT_NOPREFIX;
    GetClientRect (infoPtr->hwndSelf, &rc);

    hBrush = CreateSolidBrush(infoPtr->clrBk);

    oldBkMode = SetBkMode (hdc, TRANSPARENT);
    SetTextColor (hdc, infoPtr->clrText);
    hOldFont = SelectObject (hdc, infoPtr->hFont);



    TOOLTIPS_customdraw_fill(infoPtr, &nmttcd, hdc, &rc, uFlags);
    cdmode = TOOLTIPS_notify_customdraw(CDDS_PREPAINT, &nmttcd);
    uFlags = nmttcd.uDrawFlags;

    if (dwStyle & TTS_BALLOON)
    {

        hRgn = CreateRectRgn(0, 0, 0, 0);

        GetWindowRgn(infoPtr->hwndSelf, hRgn);


        FillRgn(hdc, hRgn, hBrush);
        DeleteObject(hBrush);
        hBrush = ((void*)0);
    }
    else
    {

        FillRect(hdc, &rc, hBrush);
        DeleteObject(hBrush);
        hBrush = ((void*)0);
    }

    if ((dwStyle & TTS_BALLOON) || infoPtr->pszTitle)
    {

        rc.left += (BALLOON_TEXT_MARGIN + infoPtr->rcMargin.left);
        rc.top += (BALLOON_TEXT_MARGIN + infoPtr->rcMargin.top);
        rc.right -= (BALLOON_TEXT_MARGIN + infoPtr->rcMargin.right);
        rc.bottom -= (BALLOON_TEXT_MARGIN + infoPtr->rcMargin.bottom);
        if(infoPtr->bToolBelow) rc.top += BALLOON_STEMHEIGHT;

        if (infoPtr->pszTitle)
        {
            RECT rcTitle = {rc.left, rc.top, rc.right, rc.bottom};
            int height;
            BOOL icon_present;
            HFONT prevFont;


            icon_present = infoPtr->hTitleIcon &&
                DrawIconEx(hdc, rc.left, rc.top, infoPtr->hTitleIcon,
                           ICON_WIDTH, ICON_HEIGHT, 0, ((void*)0), DI_NORMAL);
            if (icon_present)
                rcTitle.left += ICON_WIDTH + BALLOON_ICON_TITLE_SPACING;

            rcTitle.bottom = rc.top + ICON_HEIGHT;


            prevFont = SelectObject (hdc, infoPtr->hTitleFont);
            height = DrawTextW(hdc, infoPtr->pszTitle, -1, &rcTitle, DT_BOTTOM | DT_SINGLELINE | DT_NOPREFIX);
            SelectObject (hdc, prevFont);
            rc.top += height + BALLOON_TITLE_TEXT_SPACING;
        }
    }
    else
    {

        rc.left += (NORMAL_TEXT_MARGIN + infoPtr->rcMargin.left);
        rc.top += (NORMAL_TEXT_MARGIN + infoPtr->rcMargin.top);
        rc.right -= (NORMAL_TEXT_MARGIN + infoPtr->rcMargin.right);
        rc.bottom -= (NORMAL_TEXT_MARGIN + infoPtr->rcMargin.bottom);
    }


    DrawTextW (hdc, infoPtr->szTipText, -1, &rc, uFlags);


    if (cdmode & CDRF_NOTIFYPOSTPAINT) {
        TOOLTIPS_notify_customdraw(CDDS_POSTPAINT, &nmttcd);
    }


    SelectObject (hdc, hOldFont);
    SetBkMode (hdc, oldBkMode);

    if (dwStyle & TTS_BALLOON)
    {

        INT width = GetSystemMetrics(SM_CXDLGFRAME) - GetSystemMetrics(SM_CXEDGE);
        INT height = GetSystemMetrics(SM_CYDLGFRAME) - GetSystemMetrics(SM_CYEDGE);

        hBrush = GetSysColorBrush(COLOR_WINDOWFRAME);
        FrameRgn(hdc, hRgn, hBrush, width, height);
    }

    if (hRgn)
        DeleteObject(hRgn);
}
