
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dwStyle; int orgStyle; int hwndSelf; } ;
struct TYPE_6__ {int styleOld; int styleNew; } ;
typedef TYPE_1__ STYLESTRUCT ;
typedef TYPE_2__ REBAR_INFO ;
typedef int LRESULT ;
typedef scalar_t__ INT ;


 int CCS_VERT ;
 int FALSE ;
 scalar_t__ GWL_STYLE ;
 scalar_t__ GetWindowTheme (int ) ;
 int REBAR_Layout (TYPE_2__*) ;
 int TRACE (char*,int,int,int) ;
 int WS_BORDER ;

__attribute__((used)) static LRESULT
REBAR_StyleChanged (REBAR_INFO *infoPtr, INT nType, const STYLESTRUCT *lpStyle)
{
    TRACE("current style=%08x, styleOld=%08x, style being set to=%08x\n",
   infoPtr->dwStyle, lpStyle->styleOld, lpStyle->styleNew);
    if (nType == GWL_STYLE)
    {
        infoPtr->orgStyle = infoPtr->dwStyle = lpStyle->styleNew;
        if (GetWindowTheme (infoPtr->hwndSelf))
            infoPtr->dwStyle &= ~WS_BORDER;

        if ((lpStyle->styleNew ^ lpStyle->styleOld) & CCS_VERT)
            REBAR_Layout(infoPtr);
    }
    return FALSE;
}
