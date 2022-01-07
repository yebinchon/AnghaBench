
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grouping_sum {int count; int sum; } ;
typedef scalar_t__ calculated_number ;
struct TYPE_4__ {scalar_t__ grouping_data; } ;
struct TYPE_5__ {TYPE_1__ internal; } ;
typedef TYPE_2__ RRDR ;


 int isnan (scalar_t__) ;

void grouping_add_sum(RRDR *r, calculated_number value) {
    if(!isnan(value)) {
        struct grouping_sum *g = (struct grouping_sum *)r->internal.grouping_data;
        g->sum += value;
        g->count++;
    }
}
