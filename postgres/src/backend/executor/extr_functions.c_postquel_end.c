
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* qd; int status; } ;
typedef TYPE_1__ execution_state ;
struct TYPE_9__ {scalar_t__ operation; TYPE_2__* dest; } ;
struct TYPE_8__ {int (* rDestroy ) (TYPE_2__*) ;} ;


 scalar_t__ CMD_UTILITY ;
 int ExecutorEnd (TYPE_4__*) ;
 int ExecutorFinish (TYPE_4__*) ;
 int F_EXEC_DONE ;
 int FreeQueryDesc (TYPE_4__*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
postquel_end(execution_state *es)
{

 es->status = F_EXEC_DONE;


 if (es->qd->operation != CMD_UTILITY)
 {
  ExecutorFinish(es->qd);
  ExecutorEnd(es->qd);
 }

 es->qd->dest->rDestroy(es->qd->dest);

 FreeQueryDesc(es->qd);
 es->qd = ((void*)0);
}
