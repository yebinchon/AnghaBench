
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* items; scalar_t__ uNumItem; } ;
struct TYPE_9__ {int bottom; int top; int right; int left; } ;
struct TYPE_7__ {int bottom; int top; int right; int left; } ;
struct TYPE_8__ {TYPE_1__ rect; } ;
typedef int LRESULT ;
typedef TYPE_3__* LPRECT ;
typedef size_t INT ;
typedef TYPE_4__ HEADER_INFO ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static LRESULT
HEADER_GetItemRect (const HEADER_INFO *infoPtr, INT iItem, LPRECT lpRect)
{
    if ((iItem < 0) || (iItem >= (INT)infoPtr->uNumItem))
        return FALSE;

    lpRect->left = infoPtr->items[iItem].rect.left;
    lpRect->right = infoPtr->items[iItem].rect.right;
    lpRect->top = infoPtr->items[iItem].rect.top;
    lpRect->bottom = infoPtr->items[iItem].rect.bottom;

    return TRUE;
}
