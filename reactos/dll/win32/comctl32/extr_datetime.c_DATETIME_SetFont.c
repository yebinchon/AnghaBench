
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hwndSelf; int hFont; } ;
typedef int LRESULT ;
typedef int HFONT ;
typedef TYPE_1__ DATETIME_INFO ;
typedef scalar_t__ BOOL ;


 int InvalidateRect (int ,int *,int ) ;
 int TRUE ;

__attribute__((used)) static LRESULT
DATETIME_SetFont (DATETIME_INFO *infoPtr, HFONT font, BOOL repaint)
{
    infoPtr->hFont = font;
    if (repaint) InvalidateRect(infoPtr->hwndSelf, ((void*)0), TRUE);
    return 0;
}
