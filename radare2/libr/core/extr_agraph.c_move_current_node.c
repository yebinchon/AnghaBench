
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int curnode; } ;
struct TYPE_6__ {int x; int y; } ;
typedef TYPE_1__ RANode ;
typedef TYPE_2__ RAGraph ;


 int NORMALIZE_MOV (int) ;
 TYPE_1__* get_anode (int ) ;
 scalar_t__ is_tiny (TYPE_2__*) ;

__attribute__((used)) static void move_current_node(RAGraph *g, int xdiff, int ydiff) {
 RANode *n = get_anode (g->curnode);
 if (n) {
  if (is_tiny (g)) {
   xdiff = NORMALIZE_MOV (xdiff);
   ydiff = NORMALIZE_MOV (ydiff);
  }

  n->x += xdiff;
  n->y += ydiff;
 }
}
