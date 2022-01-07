
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WPARAM ;
struct TYPE_5__ {int fStatus; int dwStyle; } ;
typedef TYPE_1__ REBAR_INFO ;
typedef int LRESULT ;
typedef int LPARAM ;


 int RBS_AUTOSIZE ;
 int REBAR_AutoSize (TYPE_1__*,int ) ;
 int REBAR_Layout (TYPE_1__*) ;
 int SELF_RESIZE ;
 int TRACE (char*,int,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT
REBAR_Size (REBAR_INFO *infoPtr, WPARAM wParam, LPARAM lParam)
{
    TRACE("wParam=%lx, lParam=%lx\n", wParam, lParam);


    if (infoPtr->fStatus & SELF_RESIZE) {
 infoPtr->fStatus &= ~SELF_RESIZE;
 TRACE("SELF_RESIZE was set, reset, fStatus=%08x lparam=%08lx\n",
       infoPtr->fStatus, lParam);
 return 0;
    }

    if (infoPtr->dwStyle & RBS_AUTOSIZE)
        REBAR_AutoSize(infoPtr, TRUE);
    else
        REBAR_Layout(infoPtr);

    return 0;
}
