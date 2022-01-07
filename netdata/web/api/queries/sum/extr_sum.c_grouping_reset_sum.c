
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grouping_sum {scalar_t__ count; scalar_t__ sum; } ;
struct TYPE_4__ {scalar_t__ grouping_data; } ;
struct TYPE_5__ {TYPE_1__ internal; } ;
typedef TYPE_2__ RRDR ;



void grouping_reset_sum(RRDR *r) {
    struct grouping_sum *g = (struct grouping_sum *)r->internal.grouping_data;
    g->sum = 0;
    g->count = 0;
}
