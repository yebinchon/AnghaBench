
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int quiet; } ;
struct lwan {TYPE_1__ config; } ;


 int can_use_colors () ;
 int quiet ;
 int use_colors ;

void lwan_status_init(struct lwan *l)
{



    quiet = 0;
    (void)l;

    use_colors = can_use_colors();
}
