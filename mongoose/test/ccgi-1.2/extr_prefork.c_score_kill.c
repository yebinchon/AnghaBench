
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct score_board {int maxproc; TYPE_1__* proc; } ;
struct TYPE_2__ {scalar_t__ pid; scalar_t__ state; } ;


 scalar_t__ SCORE_IDLE ;
 int SIGTERM ;
 int kill (scalar_t__,int ) ;

__attribute__((used)) static void
score_kill(struct score_board *scb) {
    int i;
    for (i = 0; i < scb->maxproc; i++) {
        if (scb->proc[i].pid != 0 && scb->proc[i].state == SCORE_IDLE) {
            kill(scb->proc[i].pid, SIGTERM);
            return;
        }
    }
}
