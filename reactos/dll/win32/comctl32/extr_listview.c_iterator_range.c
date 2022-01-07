
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ upper; scalar_t__ lower; } ;
struct TYPE_8__ {TYPE_1__* ranges; TYPE_2__ range; } ;
struct TYPE_6__ {int hdpa; } ;
typedef TYPE_2__ RANGE ;
typedef TYPE_3__ ITERATOR ;


 scalar_t__ DPA_GetPtr (int ,scalar_t__) ;
 scalar_t__ DPA_GetPtrCount (int ) ;

__attribute__((used)) static RANGE iterator_range(const ITERATOR *i)
{
    RANGE range;

    if (!i->ranges) return i->range;

    if (DPA_GetPtrCount(i->ranges->hdpa) > 0)
    {
        range.lower = (*(RANGE*)DPA_GetPtr(i->ranges->hdpa, 0)).lower;
        range.upper = (*(RANGE*)DPA_GetPtr(i->ranges->hdpa, DPA_GetPtrCount(i->ranges->hdpa) - 1)).upper;
    }
    else range.lower = range.upper = 0;

    return range;
}
