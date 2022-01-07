
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grouping_min {scalar_t__ count; scalar_t__ min; } ;
struct TYPE_4__ {scalar_t__ grouping_data; } ;
struct TYPE_5__ {TYPE_1__ internal; } ;
typedef TYPE_2__ RRDR ;



void grouping_reset_min(RRDR *r) {
    struct grouping_min *g = (struct grouping_min *)r->internal.grouping_data;
    g->min = 0;
    g->count = 0;
}
