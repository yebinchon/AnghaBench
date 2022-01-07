
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct score_board {int maxproc; TYPE_1__* proc; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {scalar_t__ pid; } ;



__attribute__((used)) static int
score_find(struct score_board *scb, pid_t pid) {
    int i;
    for (i = 0; i < scb->maxproc; i++) {
        if (scb->proc[i].pid == pid) {
            return i;
        }
    }
    return -1;
}
