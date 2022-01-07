
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int os_signal_t ;
typedef int os_param_t ;
struct TYPE_3__ {int par; int sig; } ;
typedef TYPE_1__ os_event_t ;
struct TYPE_4__ {int i_put; int qlen; int i_get; TYPE_1__* queue; } ;


 int _ets_post (int,int ,int ) ;
 TYPE_2__* emu_tasks ;
 int ets_intr_lock () ;
 int ets_intr_unlock () ;
 int printf (char*,int) ;
 int prio2id (int) ;

bool ets_post(uint8 prio, os_signal_t sig, os_param_t param) {




    ets_intr_lock();

    const int id = prio2id(prio);
    os_event_t *q = emu_tasks[id].queue;
    if (emu_tasks[id].i_put == -1) {

        printf("ets_post: task %d queue full\n", prio);
        return 1;
    }
    q = &q[emu_tasks[id].i_put++];
    q->sig = sig;
    q->par = param;
    if (emu_tasks[id].i_put == emu_tasks[id].qlen) {
        emu_tasks[id].i_put = 0;
    }
    if (emu_tasks[id].i_put == emu_tasks[id].i_get) {

        emu_tasks[id].i_put = -1;
    }



    ets_intr_unlock();

    return 0;

}
