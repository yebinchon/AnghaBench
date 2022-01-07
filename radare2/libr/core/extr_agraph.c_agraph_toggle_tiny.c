
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int event_data; } ;
struct TYPE_5__ {int is_tiny; int need_update_dim; } ;
typedef TYPE_1__ RAGraph ;


 int agraph_refresh (int ) ;
 int agraph_set_layout (TYPE_1__*) ;
 TYPE_2__* r_cons_singleton () ;

__attribute__((used)) static void agraph_toggle_tiny (RAGraph *g) {
 g->is_tiny = !g->is_tiny;
 g->need_update_dim = 1;
 agraph_refresh (r_cons_singleton ()->event_data);
 agraph_set_layout ((RAGraph *) g);

}
