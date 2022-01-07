
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ lower; scalar_t__ upper; } ;
struct TYPE_7__ {int nItem; scalar_t__ index; int nSpecial; TYPE_2__ range; TYPE_1__* ranges; } ;
struct TYPE_5__ {int hdpa; } ;
typedef TYPE_2__ RANGE ;
typedef TYPE_3__ ITERATOR ;
typedef int BOOL ;


 scalar_t__ DPA_GetPtr (int ,scalar_t__) ;
 scalar_t__ DPA_GetPtrCount (int ) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static inline BOOL iterator_prev(ITERATOR* i)
{
    BOOL start = FALSE;

    if (i->nItem == -1)
    {
 start = TRUE;
 if (i->ranges) i->index = DPA_GetPtrCount(i->ranges->hdpa);
 goto pickarange;
    }
    if (i->nItem == i->nSpecial)
    {
 i->nItem = -1;
 return FALSE;
    }

testitem:
    i->nItem--;
    if (i->nItem == i->nSpecial) i->nItem--;
    if (i->nItem >= i->range.lower) return TRUE;

pickarange:
    if (i->ranges)
    {
 if (i->index > 0)
     i->range = *(RANGE*)DPA_GetPtr(i->ranges->hdpa, --i->index);
 else goto end;
    }
    else if (!start && i->nItem < i->range.lower) goto end;

    i->nItem = i->range.upper;
    if (i->nItem > 0) goto testitem;
end:
    return (i->nItem = i->nSpecial) != -1;
}
