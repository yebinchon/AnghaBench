
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct score_board {int numidle; int numproc; TYPE_1__* proc; } ;
typedef int pid_t ;
struct TYPE_2__ {int state; int pid; } ;


 int SCORE_IDLE ;
 int score_find (struct score_board*,int ) ;

__attribute__((used)) static void
score_add(struct score_board *scb, pid_t pid) {
    int i = score_find(scb, 0);
    if (i >= 0) {
        scb->proc[i].pid = pid;
        scb->proc[i].state = SCORE_IDLE;
        scb->numproc++;
        scb->numidle++;
    }
}
