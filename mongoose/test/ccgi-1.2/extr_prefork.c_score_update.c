
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct score_state {scalar_t__ state; int pid; } ;
struct score_board {int numidle; TYPE_1__* proc; } ;
struct TYPE_2__ {scalar_t__ state; } ;


 scalar_t__ SCORE_IDLE ;
 int score_find (struct score_board*,int ) ;

__attribute__((used)) static void
score_update(struct score_board *scb, struct score_state *st) {
    int i = score_find(scb, st->pid);
    if (i >= 0 && scb->proc[i].state != st->state) {
        scb->proc[i].state = st->state;
        if (st->state == SCORE_IDLE) {
            scb->numidle++;
        }
        else {
            scb->numidle--;
        }
    }
}
