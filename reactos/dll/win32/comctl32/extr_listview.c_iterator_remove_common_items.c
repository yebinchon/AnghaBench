
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lower; int upper; } ;
struct TYPE_8__ {int nItem; TYPE_1__ range; scalar_t__ ranges; } ;
typedef TYPE_2__ ITERATOR ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int TRUE ;
 int iterator_next (TYPE_2__*) ;
 int iterator_prev (TYPE_2__*) ;
 int ranges_delitem (scalar_t__,int) ;

__attribute__((used)) static BOOL iterator_remove_common_items(ITERATOR *iter1, ITERATOR *iter2)
{
    if(!iter1->ranges || !iter2->ranges) {
        int lower, upper;

        if(iter1->ranges || iter2->ranges ||
                (iter1->range.lower<iter2->range.lower && iter1->range.upper>iter2->range.upper) ||
                (iter1->range.lower>iter2->range.lower && iter1->range.upper<iter2->range.upper)) {
            ERR("result is not a one range iterator\n");
            return FALSE;
        }

        if(iter1->range.lower==-1 || iter2->range.lower==-1)
            return TRUE;

        lower = iter1->range.lower;
        upper = iter1->range.upper;

        if(lower < iter2->range.lower)
            iter1->range.upper = iter2->range.lower;
        else if(upper > iter2->range.upper)
            iter1->range.lower = iter2->range.upper;
        else
            iter1->range.lower = iter1->range.upper = -1;

        if(iter2->range.lower < lower)
            iter2->range.upper = lower;
        else if(iter2->range.upper > upper)
            iter2->range.lower = upper;
        else
            iter2->range.lower = iter2->range.upper = -1;

        return TRUE;
    }

    iterator_next(iter1);
    iterator_next(iter2);

    while(1) {
        if(iter1->nItem==-1 || iter2->nItem==-1)
            break;

        if(iter1->nItem == iter2->nItem) {
            int delete = iter1->nItem;

            iterator_prev(iter1);
            iterator_prev(iter2);
            ranges_delitem(iter1->ranges, delete);
            ranges_delitem(iter2->ranges, delete);
            iterator_next(iter1);
            iterator_next(iter2);
        } else if(iter1->nItem > iter2->nItem)
            iterator_next(iter2);
        else
            iterator_next(iter1);
    }

    iter1->nItem = iter1->range.lower = iter1->range.upper = -1;
    iter2->nItem = iter2->range.lower = iter2->range.upper = -1;
    return TRUE;
}
