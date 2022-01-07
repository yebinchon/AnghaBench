
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct grouping_median {scalar_t__ next_pos; scalar_t__ series_size; scalar_t__* series; } ;
typedef scalar_t__ calculated_number ;
struct TYPE_6__ {scalar_t__ grouping_data; } ;
struct TYPE_7__ {TYPE_1__* st; int group; TYPE_2__ internal; } ;
struct TYPE_5__ {int name; } ;
typedef TYPE_3__ RRDR ;
typedef scalar_t__ LONG_DOUBLE ;


 scalar_t__ calculated_number_isnumber (scalar_t__) ;
 int error (char*,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ unlikely (int) ;

void grouping_add_median(RRDR *r, calculated_number value) {
    struct grouping_median *g = (struct grouping_median *)r->internal.grouping_data;

    if(unlikely(g->next_pos >= g->series_size)) {
        error("INTERNAL ERROR: median buffer overflow on chart '%s' - next_pos = %zu, series_size = %zu, r->group = %ld.", r->st->name, g->next_pos, g->series_size, r->group);
    }
    else {
        if(calculated_number_isnumber(value))
            g->series[g->next_pos++] = (LONG_DOUBLE)value;
    }
}
