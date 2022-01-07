
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int curnode; } ;
struct TYPE_10__ {int gnode; scalar_t__ is_dummy; } ;
typedef TYPE_1__ RANode ;
typedef TYPE_2__ RAGraph ;


 int agraph_update_seek (TYPE_2__*,TYPE_1__*,int) ;
 int find_near_of (TYPE_2__*,int ,int) ;
 TYPE_1__* get_anode (int ) ;
 int r_agraph_set_curnode (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void agraph_prev_node(RAGraph *g) {
 RANode *a = get_anode (find_near_of (g, g->curnode, 0));
 while (a && a->is_dummy) {
  a = get_anode (find_near_of (g, a->gnode, 0));
 }
 r_agraph_set_curnode (g, a);
 agraph_update_seek (g, get_anode (g->curnode), 0);
}
