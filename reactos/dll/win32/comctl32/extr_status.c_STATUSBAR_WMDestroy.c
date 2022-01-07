
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int style; TYPE_2__* text; } ;
struct TYPE_6__ {unsigned int numParts; int style; int Self; scalar_t__ hwndToolTip; scalar_t__ hDefaultFont; struct TYPE_6__* parts; TYPE_1__ part0; struct TYPE_6__* text; } ;
typedef TYPE_2__ STATUS_INFO ;
typedef int LRESULT ;


 int CloseThemeData (int ) ;
 int DeleteObject (scalar_t__) ;
 int DestroyWindow (scalar_t__) ;
 int Free (TYPE_2__*) ;
 int GetWindowTheme (int ) ;
 int SBT_OWNERDRAW ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRACE (char*) ;

__attribute__((used)) static LRESULT
STATUSBAR_WMDestroy (STATUS_INFO *infoPtr)
{
    unsigned int i;

    TRACE("\n");
    for (i = 0; i < infoPtr->numParts; i++) {
 if (!(infoPtr->parts[i].style & SBT_OWNERDRAW))
     Free (infoPtr->parts[i].text);
    }
    if (!(infoPtr->part0.style & SBT_OWNERDRAW))
 Free (infoPtr->part0.text);
    Free (infoPtr->parts);


    if (infoPtr->hDefaultFont)
 DeleteObject (infoPtr->hDefaultFont);


    if (infoPtr->hwndToolTip)
 DestroyWindow (infoPtr->hwndToolTip);

    CloseThemeData (GetWindowTheme (infoPtr->Self));

    SetWindowLongPtrW(infoPtr->Self, 0, 0);
    Free (infoPtr);
    return 0;
}
