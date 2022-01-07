
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hIcon; int bound; } ;
struct TYPE_7__ {int numParts; TYPE_2__* parts; int Self; scalar_t__ simple; TYPE_1__ part0; } ;
struct TYPE_6__ {scalar_t__ hIcon; int bound; } ;
typedef TYPE_3__ STATUS_INFO ;
typedef int INT ;
typedef scalar_t__ HICON ;
typedef int BOOL ;


 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int TRACE (char*,int) ;
 int TRUE ;

__attribute__((used)) static BOOL
STATUSBAR_SetIcon (STATUS_INFO *infoPtr, INT nPart, HICON hIcon)
{
    if ((nPart < -1) || (nPart >= infoPtr->numParts))
 return FALSE;

    TRACE("setting part %d\n", nPart);


    if (nPart == -1) {
 if (infoPtr->part0.hIcon == hIcon)
     return TRUE;
 infoPtr->part0.hIcon = hIcon;
 if (infoPtr->simple)
            InvalidateRect(infoPtr->Self, &infoPtr->part0.bound, FALSE);
    } else {
 if (infoPtr->parts[nPart].hIcon == hIcon)
     return TRUE;

 infoPtr->parts[nPart].hIcon = hIcon;
 if (!(infoPtr->simple))
            InvalidateRect(infoPtr->Self, &infoPtr->parts[nPart].bound, FALSE);
    }
    return TRUE;
}
