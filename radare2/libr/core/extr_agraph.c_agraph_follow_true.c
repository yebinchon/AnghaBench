
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int curnode; } ;
typedef TYPE_1__ RAGraph ;


 int agraph_update_seek (TYPE_1__*,int ,int) ;
 int follow_nth (TYPE_1__*,int ) ;
 int get_anode (int ) ;

__attribute__((used)) static void agraph_follow_true(RAGraph *g) {
 follow_nth (g, 0);
 agraph_update_seek (g, get_anode (g->curnode), 0);
}
