
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grouping_max {int count; int max; } ;
typedef int calculated_number ;
struct TYPE_4__ {scalar_t__ grouping_data; } ;
struct TYPE_5__ {TYPE_1__ internal; } ;
typedef TYPE_2__ RRDR ;


 scalar_t__ calculated_number_fabs (int ) ;
 int isnan (int ) ;

void grouping_add_max(RRDR *r, calculated_number value) {
    if(!isnan(value)) {
        struct grouping_max *g = (struct grouping_max *)r->internal.grouping_data;

        if(!g->count || calculated_number_fabs(value) > calculated_number_fabs(g->max)) {
            g->max = value;
            g->count++;
        }
    }
}
