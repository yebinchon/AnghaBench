
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grouping_incremental_sum {scalar_t__ count; scalar_t__ last; scalar_t__ first; } ;
struct TYPE_4__ {scalar_t__ grouping_data; } ;
struct TYPE_5__ {TYPE_1__ internal; } ;
typedef TYPE_2__ RRDR ;



void grouping_reset_incremental_sum(RRDR *r) {
    struct grouping_incremental_sum *g = (struct grouping_incremental_sum *)r->internal.grouping_data;
    g->first = 0;
    g->last = 0;
    g->count = 0;
}
