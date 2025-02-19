
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int upper; int lower; } ;
struct TYPE_7__ {int nItem; int nSpecial; scalar_t__ index; TYPE_2__ range; TYPE_1__* ranges; } ;
struct TYPE_5__ {int hdpa; } ;
typedef TYPE_2__ RANGE ;
typedef TYPE_3__ ITERATOR ;
typedef int BOOL ;


 scalar_t__ DPA_GetPtr (int ,int ) ;
 scalar_t__ DPA_GetPtrCount (int ) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline BOOL iterator_next(ITERATOR* i)
{
    if (i->nItem == -1)
    {
 i->nItem = i->nSpecial;
 if (i->nItem != -1) return TRUE;
    }
    if (i->nItem == i->nSpecial)
    {
 if (i->ranges) i->index = 0;
 goto pickarange;
    }

    i->nItem++;
testitem:
    if (i->nItem == i->nSpecial) i->nItem++;
    if (i->nItem < i->range.upper) return TRUE;

pickarange:
    if (i->ranges)
    {
 if (i->index < DPA_GetPtrCount(i->ranges->hdpa))
     i->range = *(RANGE*)DPA_GetPtr(i->ranges->hdpa, i->index++);
 else goto end;
    }
    else if (i->nItem >= i->range.upper) goto end;

    i->nItem = i->range.lower;
    if (i->nItem >= 0) goto testitem;
end:
    i->nItem = -1;
    return FALSE;
}
