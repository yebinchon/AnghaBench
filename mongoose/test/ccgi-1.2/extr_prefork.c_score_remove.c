
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct score_board {int numidle; TYPE_1__* proc; int numproc; } ;
typedef int pid_t ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ pid; } ;


 scalar_t__ SCORE_IDLE ;
 int score_find (struct score_board*,int ) ;

__attribute__((used)) static void
score_remove(struct score_board *scb, pid_t pid) {
    int i = score_find(scb, pid);
    if (i >= 0) {
        scb->proc[i].pid = 0;
        scb->numproc--;
        if (scb->proc[i].state == SCORE_IDLE) {
            scb->numidle--;
        }
    }
}
