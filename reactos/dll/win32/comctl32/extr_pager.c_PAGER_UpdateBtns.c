
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ TLbtnState; scalar_t__ BRbtnState; scalar_t__ nPos; int hwndSelf; } ;
typedef int RECT ;
typedef int POINT ;
typedef TYPE_1__ PAGER_INFO ;
typedef scalar_t__ INT ;
typedef int BOOL ;


 int GetCursorPos (int *) ;
 int PAGER_GetButtonRects (TYPE_1__*,int *,int *,int ) ;
 scalar_t__ PGF_GRAYED ;
 scalar_t__ PGF_INVISIBLE ;
 void* PGF_NORMAL ;
 scalar_t__ PtInRect (int *,int ) ;
 int SWP_FRAMECHANGED ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOSIZE ;
 int SWP_NOZORDER ;
 int ScreenToClient (int ,int *) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetWindowPos (int ,int ,int ,int ,int ,int ,int) ;
 int TRUE ;
 int WM_NCPAINT ;

__attribute__((used)) static void
PAGER_UpdateBtns(PAGER_INFO *infoPtr, INT scrollRange, BOOL hideGrayBtns)
{
    BOOL resizeClient;
    BOOL repaintBtns;
    INT oldTLbtnState = infoPtr->TLbtnState;
    INT oldBRbtnState = infoPtr->BRbtnState;
    POINT pt;
    RECT rcTopLeft, rcBottomRight;


    PAGER_GetButtonRects(infoPtr, &rcTopLeft, &rcBottomRight, TRUE);

    GetCursorPos(&pt);
    ScreenToClient( infoPtr->hwndSelf, &pt );


    if (infoPtr->nPos > 0)
    {
        if (infoPtr->TLbtnState == PGF_INVISIBLE || infoPtr->TLbtnState == PGF_GRAYED)
            infoPtr->TLbtnState = PGF_NORMAL;
    }
    else if (!hideGrayBtns && PtInRect(&rcTopLeft, pt))
        infoPtr->TLbtnState = PGF_GRAYED;
    else
        infoPtr->TLbtnState = PGF_INVISIBLE;

    if (scrollRange <= 0)
    {
        infoPtr->TLbtnState = PGF_INVISIBLE;
        infoPtr->BRbtnState = PGF_INVISIBLE;
    }
    else if (infoPtr->nPos < scrollRange)
    {
        if (infoPtr->BRbtnState == PGF_INVISIBLE || infoPtr->BRbtnState == PGF_GRAYED)
            infoPtr->BRbtnState = PGF_NORMAL;
    }
    else if (!hideGrayBtns && PtInRect(&rcBottomRight, pt))
        infoPtr->BRbtnState = PGF_GRAYED;
    else
        infoPtr->BRbtnState = PGF_INVISIBLE;


    resizeClient =
        ((oldTLbtnState == PGF_INVISIBLE) != (infoPtr->TLbtnState == PGF_INVISIBLE)) ||
        ((oldBRbtnState == PGF_INVISIBLE) != (infoPtr->BRbtnState == PGF_INVISIBLE));

    if (resizeClient)
        SetWindowPos(infoPtr->hwndSelf, 0, 0, 0, 0, 0,
                     SWP_FRAMECHANGED | SWP_NOSIZE | SWP_NOMOVE |
                     SWP_NOZORDER | SWP_NOACTIVATE);


    repaintBtns = (oldTLbtnState != infoPtr->TLbtnState) ||
                  (oldBRbtnState != infoPtr->BRbtnState);
    if (repaintBtns)
        SendMessageW(infoPtr->hwndSelf, WM_NCPAINT, 0, 0);
}
