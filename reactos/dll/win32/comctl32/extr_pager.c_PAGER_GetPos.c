
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nPos; int hwndSelf; } ;
typedef TYPE_1__ PAGER_INFO ;
typedef int INT ;


 int TRACE (char*,int ,int ) ;

__attribute__((used)) static inline INT
PAGER_GetPos(const PAGER_INFO *infoPtr)
{
    TRACE("[%p] returns %d\n", infoPtr->hwndSelf, infoPtr->nPos);
    return infoPtr->nPos;
}
