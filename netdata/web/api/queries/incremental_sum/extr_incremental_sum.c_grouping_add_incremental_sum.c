
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grouping_incremental_sum {int count; void* last; void* first; } ;
typedef void* calculated_number ;
struct TYPE_4__ {scalar_t__ grouping_data; } ;
struct TYPE_5__ {TYPE_1__ internal; } ;
typedef TYPE_2__ RRDR ;


 int isnan (void*) ;
 scalar_t__ unlikely (int) ;

void grouping_add_incremental_sum(RRDR *r, calculated_number value) {
    if(!isnan(value)) {
        struct grouping_incremental_sum *g = (struct grouping_incremental_sum *)r->internal.grouping_data;

        if(unlikely(!g->count)) {
            g->first = value;
            g->count++;
        }
        else {
            g->last = value;
            g->count++;
        }
    }
}
