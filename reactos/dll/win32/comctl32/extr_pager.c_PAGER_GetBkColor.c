
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int clrBk; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int COLORREF ;


 int TRACE (char*,int ,int ) ;

__attribute__((used)) static inline COLORREF
PAGER_GetBkColor(const PAGER_INFO *infoPtr)
{
    TRACE("[%p] returns %06x\n", infoPtr->hwndSelf, infoPtr->clrBk);
    return infoPtr->clrBk;
}
