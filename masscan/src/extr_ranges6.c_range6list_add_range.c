
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Range6List {size_t count; size_t max; struct Range6* list; } ;
struct Range6 {int end; int begin; } ;
typedef int ipv6address ;


 scalar_t__ LESS (int ,int ) ;
 struct Range6* REALLOCARRAY (struct Range6*,int,int) ;
 int memmove (struct Range6*,struct Range6*,size_t) ;
 int range6_combine (struct Range6*,struct Range6) ;
 scalar_t__ range6_is_overlap (struct Range6,struct Range6) ;

void
range6list_add_range(struct Range6List *targets, const ipv6address begin, const ipv6address end)
{
    struct Range6 range;

    range.begin = begin;
    range.end = end;


    if (targets->count + 1 >= targets->max) {


        targets->max = targets->max * 2 + 1;

        targets->list = REALLOCARRAY(targets->list, targets->max, sizeof(targets->list[0]));
    }

    {
        size_t lo, hi, mid;

        lo = 0;
        hi = targets->count;
        while (lo < hi) {
            mid = lo + (hi - lo)/2;
            if (LESS(range.end, targets->list[mid].begin)) {

                hi = mid;
            } else if (LESS(targets->list[mid].end, range.begin)) {

                lo = mid + 1;
            } else
                break;
        }


        mid = lo + (hi - lo)/2;





        if (mid < targets->count && range6_is_overlap(targets->list[mid], range)) {
            range6_combine(&targets->list[mid], range);
        } else {
            memmove(targets->list+mid+1, targets->list+mid, (targets->count - mid) * sizeof(targets->list[0]));
            targets->list[mid].begin = begin;
            targets->list[mid].end = end;
            targets->count++;
        }




        for (;;) {
            unsigned is_neighbor_overlapped = 0;
            if (mid > 0 && range6_is_overlap(targets->list[mid-1], targets->list[mid])) {
                range6_combine(&targets->list[mid-1], targets->list[mid]);
                memmove(targets->list+mid, targets->list+mid+1, (targets->count - mid) * sizeof(targets->list[0]));
                mid--;
                is_neighbor_overlapped = 1;
                targets->count--;
            }
            if (mid+1 < targets->count && range6_is_overlap(targets->list[mid], targets->list[mid+1])) {
                range6_combine(&targets->list[mid], targets->list[mid+1]);
                memmove(targets->list+mid, targets->list+mid+1, (targets->count - mid) * sizeof(targets->list[0]));
                is_neighbor_overlapped = 1;
                targets->count--;
            }
            if (!is_neighbor_overlapped)
                break;
        }
        return;
    }

}
