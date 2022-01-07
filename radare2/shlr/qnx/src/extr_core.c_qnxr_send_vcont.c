
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int count; } ;
struct TYPE_10__ {TYPE_1__ step; } ;
struct TYPE_11__ {TYPE_2__ run; } ;
struct TYPE_12__ {TYPE_3__ pkt; } ;
struct TYPE_13__ {TYPE_4__ tran; } ;
typedef TYPE_5__ libqnxr_t ;


 int DSMSG_RUN ;
 int DSMSG_RUN_COUNT ;
 int DStMsg_run ;
 int SET_CHANNEL_DEBUG ;
 int nto_send (TYPE_5__*,int,int) ;
 int nto_send_init (TYPE_5__*,int ,int ,int ) ;

int qnxr_send_vcont (libqnxr_t *g, int step, int thread_id) {
 if (!g) return -1;

 nto_send_init (g, DStMsg_run, step ? DSMSG_RUN_COUNT : DSMSG_RUN,
         SET_CHANNEL_DEBUG);
 g->tran.pkt.run.step.count = 1;
 nto_send (g, sizeof (g->tran.pkt.run), 1);
 return 0;
}
