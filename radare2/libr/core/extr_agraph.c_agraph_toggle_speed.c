
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int movspeed; } ;
struct TYPE_5__ {int config; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RAGraph ;


 int const DEFAULT_SPEED ;
 int r_config_get_i (int ,char*) ;

__attribute__((used)) static void agraph_toggle_speed(RAGraph *g, RCore *core) {
 const int alt = r_config_get_i (core->config, "graph.scroll");
 g->movspeed = g->movspeed == DEFAULT_SPEED? alt: DEFAULT_SPEED;
}
