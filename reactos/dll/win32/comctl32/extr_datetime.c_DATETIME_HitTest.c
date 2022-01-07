
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nrFields; int * fieldRect; int checkbox; int calbutton; } ;
typedef int POINT ;
typedef int INT ;
typedef TYPE_1__ DATETIME_INFO ;


 int DTHT_CHECKBOX ;
 int DTHT_MCPOPUP ;
 int DTHT_NONE ;
 scalar_t__ PtInRect (int *,int ) ;
 int TRACE (char*,int ) ;
 int wine_dbgstr_point (int *) ;

__attribute__((used)) static INT
DATETIME_HitTest (const DATETIME_INFO *infoPtr, POINT pt)
{
    int i;

    TRACE ("%s\n", wine_dbgstr_point(&pt));

    if (PtInRect (&infoPtr->calbutton, pt)) return DTHT_MCPOPUP;
    if (PtInRect (&infoPtr->checkbox, pt)) return DTHT_CHECKBOX;

    for (i = 0; i < infoPtr->nrFields; i++) {
        if (PtInRect (&infoPtr->fieldRect[i], pt)) return i;
    }

    return DTHT_NONE;
}
