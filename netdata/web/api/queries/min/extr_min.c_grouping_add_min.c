
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grouping_min {int count; int min; } ;
typedef int calculated_number ;
struct TYPE_4__ {scalar_t__ grouping_data; } ;
struct TYPE_5__ {TYPE_1__ internal; } ;
typedef TYPE_2__ RRDR ;


 scalar_t__ calculated_number_fabs (int ) ;
 int isnan (int ) ;

void grouping_add_min(RRDR *r, calculated_number value) {
    if(!isnan(value)) {
        struct grouping_min *g = (struct grouping_min *)r->internal.grouping_data;

        if(!g->count || calculated_number_fabs(value) < calculated_number_fabs(g->min)) {
            g->min = value;
            g->count++;
        }
    }
}
