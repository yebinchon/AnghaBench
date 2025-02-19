
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ is_dis; } ;
typedef int RCore ;
typedef TYPE_1__ RAGraph ;


 scalar_t__ discroll ;
 scalar_t__ is_mini (TYPE_1__*) ;
 int move_current_node (TYPE_1__*,int,int) ;
 int r_core_cmdf (int *,char*,int) ;

__attribute__((used)) static void graphNodeMove(RAGraph *g, int dir, int speed) {
 int delta = (dir == 'k')? -1: 1;
 if (dir == 'H') {
  return;
 }
 if (dir == 'h' || dir == 'l') {

  if (is_mini (g)) {
   discroll = 0;
  } else {
   int delta = (dir == 'l')? 1: -1;
   move_current_node (g, speed * delta, 0);
  }
  return;
 }
 RCore *core = ((void*)0);

 if (is_mini (g)) {
  discroll += (delta * speed);
 } else if (g->is_dis) {
  r_core_cmdf (core, "so %d", (delta * 4) * speed);
 } else {
  move_current_node (g, 0, delta * speed);
 }
}
