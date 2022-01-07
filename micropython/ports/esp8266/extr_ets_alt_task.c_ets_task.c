
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
typedef int os_task_t ;
typedef int os_event_t ;
struct TYPE_2__ {int qlen; scalar_t__ i_put; scalar_t__ i_get; int * queue; int task; } ;


 int _ets_task (int ,int,int *,int) ;
 TYPE_1__* emu_tasks ;
 int printf (char*,int ,int ,int,int *,int) ;
 int prio2id (int) ;

bool ets_task(os_task_t task, uint8 prio, os_event_t *queue, uint8 qlen) {
    static unsigned cnt;
    printf("#%d ets_task(%p, %d, %p, %d)\n", cnt++, task, prio, queue, qlen);



    int id = prio2id(prio);
    emu_tasks[id].task = task;
    emu_tasks[id].queue = queue;
    emu_tasks[id].qlen = qlen;
    emu_tasks[id].i_get = 0;
    emu_tasks[id].i_put = 0;
    return 1;

}
