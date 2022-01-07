
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ TLbtnState; scalar_t__ BRbtnState; int dwStyle; int hwndSelf; } ;
struct TYPE_7__ {int x; int y; } ;
typedef TYPE_1__ POINT ;
typedef TYPE_2__ PAGER_INFO ;
typedef int LRESULT ;
typedef int INT ;
typedef int BOOL ;


 int FALSE ;
 int INITIAL_DELAY ;
 int PAGER_HitTest (TYPE_2__*,TYPE_1__*) ;
 int PAGER_Scroll (TYPE_2__*,int ) ;


 scalar_t__ PGF_DEPRESSED ;
 int PGF_SCROLLDOWN ;
 int PGF_SCROLLLEFT ;
 int PGF_SCROLLRIGHT ;
 int PGF_SCROLLUP ;
 int PGS_HORZ ;
 int SendMessageW (int ,int ,int ,int ) ;
 int SetTimer (int ,int ,int ,int ) ;
 int TIMERID1 ;
 int TRACE (char*,int ,...) ;
 int WM_NCPAINT ;

__attribute__((used)) static LRESULT
PAGER_LButtonDown (PAGER_INFO* infoPtr, INT keys, INT x, INT y)
{
    BOOL repaintBtns = FALSE;
    POINT pt;
    INT hit;

    pt.x = x;
    pt.y = y;

    TRACE("[%p] at (%d,%d)\n", infoPtr->hwndSelf, x, y);

    hit = PAGER_HitTest(infoPtr, &pt);


    if (hit == 128)
    {
        repaintBtns = infoPtr->TLbtnState != PGF_DEPRESSED;
        infoPtr->TLbtnState = PGF_DEPRESSED;
        SetTimer(infoPtr->hwndSelf, TIMERID1, INITIAL_DELAY, 0);
    }
    else if (hit == 129)
    {
        repaintBtns = infoPtr->BRbtnState != PGF_DEPRESSED;
        infoPtr->BRbtnState = PGF_DEPRESSED;
        SetTimer(infoPtr->hwndSelf, TIMERID1, INITIAL_DELAY, 0);
    }

    if (repaintBtns)
        SendMessageW(infoPtr->hwndSelf, WM_NCPAINT, 0, 0);

    switch(hit)
    {
    case 128:
        if (infoPtr->dwStyle & PGS_HORZ)
        {
            TRACE("[%p] PGF_SCROLLLEFT\n", infoPtr->hwndSelf);
            PAGER_Scroll(infoPtr, PGF_SCROLLLEFT);
        }
        else
        {
            TRACE("[%p] PGF_SCROLLUP\n", infoPtr->hwndSelf);
            PAGER_Scroll(infoPtr, PGF_SCROLLUP);
        }
        break;
    case 129:
        if (infoPtr->dwStyle & PGS_HORZ)
        {
            TRACE("[%p] PGF_SCROLLRIGHT\n", infoPtr->hwndSelf);
            PAGER_Scroll(infoPtr, PGF_SCROLLRIGHT);
        }
        else
        {
            TRACE("[%p] PGF_SCROLLDOWN\n", infoPtr->hwndSelf);
            PAGER_Scroll(infoPtr, PGF_SCROLLDOWN);
        }
        break;
    default:
        break;
    }

    return 0;
}
