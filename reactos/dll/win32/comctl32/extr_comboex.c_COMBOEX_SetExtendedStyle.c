
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwExtStyle; scalar_t__ hwndEdit; scalar_t__ hwndSelf; } ;
typedef int DWORD ;
typedef TYPE_1__ COMBOEX_INFO ;


 int CBES_EX_NOEDITIMAGE ;
 int CBES_EX_NOEDITIMAGEINDENT ;
 int CBES_EX_PATHWORDBREAKPROC ;
 int COMBOEX_AdjustEditPos (TYPE_1__*) ;
 int InvalidateRect (scalar_t__,int *,int ) ;
 int SetPathWordBreakProc (scalar_t__,int) ;
 int TRACE (char*,int,...) ;
 int TRUE ;

__attribute__((used)) static DWORD
COMBOEX_SetExtendedStyle (COMBOEX_INFO *infoPtr, DWORD mask, DWORD style)
{
    DWORD dwTemp;

    TRACE("(mask=x%08x, style=0x%08x)\n", mask, style);

    dwTemp = infoPtr->dwExtStyle;

    if (mask)
 infoPtr->dwExtStyle = (infoPtr->dwExtStyle & ~mask) | style;
    else
 infoPtr->dwExtStyle = style;


    if ((infoPtr->dwExtStyle ^ dwTemp) & CBES_EX_PATHWORDBREAKPROC)
        SetPathWordBreakProc(infoPtr->hwndEdit,
            (infoPtr->dwExtStyle & CBES_EX_PATHWORDBREAKPROC) != 0);


    mask = CBES_EX_NOEDITIMAGE | CBES_EX_NOEDITIMAGEINDENT;
    if ((infoPtr->dwExtStyle & mask) != (dwTemp & mask)) {

 TRACE("EX_NOEDITIMAGE state changed to %d\n",
       infoPtr->dwExtStyle & CBES_EX_NOEDITIMAGE);
 InvalidateRect (infoPtr->hwndSelf, ((void*)0), TRUE);
 COMBOEX_AdjustEditPos (infoPtr);
 if (infoPtr->hwndEdit)
     InvalidateRect (infoPtr->hwndEdit, ((void*)0), TRUE);
    }

    return dwTemp;
}
