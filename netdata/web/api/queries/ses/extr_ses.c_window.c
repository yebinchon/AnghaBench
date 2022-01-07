
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct grouping_ses {int dummy; } ;
typedef int calculated_number ;
struct TYPE_4__ {int points_wanted; } ;
struct TYPE_5__ {int group; TYPE_1__ internal; } ;
typedef TYPE_2__ RRDR ;


 int max_window_size ;

__attribute__((used)) static inline calculated_number window(RRDR *r, struct grouping_ses *g) {
    (void)g;

    calculated_number points;
    if(r->group == 1) {

        points = r->internal.points_wanted;
    }
    else {

        points = r->group;
    }

    return (points > max_window_size) ? max_window_size : points;
}
