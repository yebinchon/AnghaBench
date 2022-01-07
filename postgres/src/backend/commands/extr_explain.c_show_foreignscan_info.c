
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int (* ExplainForeignScan ) (TYPE_3__*,int *) ;int (* ExplainDirectModify ) (TYPE_3__*,int *) ;} ;
struct TYPE_12__ {scalar_t__ operation; } ;
struct TYPE_9__ {scalar_t__ plan; } ;
struct TYPE_10__ {TYPE_1__ ps; } ;
struct TYPE_11__ {TYPE_2__ ss; TYPE_5__* fdwroutine; } ;
typedef TYPE_3__ ForeignScanState ;
typedef TYPE_4__ ForeignScan ;
typedef TYPE_5__ FdwRoutine ;
typedef int ExplainState ;


 scalar_t__ CMD_SELECT ;
 int stub1 (TYPE_3__*,int *) ;
 int stub2 (TYPE_3__*,int *) ;

__attribute__((used)) static void
show_foreignscan_info(ForeignScanState *fsstate, ExplainState *es)
{
 FdwRoutine *fdwroutine = fsstate->fdwroutine;


 if (((ForeignScan *) fsstate->ss.ps.plan)->operation != CMD_SELECT)
 {
  if (fdwroutine->ExplainDirectModify != ((void*)0))
   fdwroutine->ExplainDirectModify(fsstate, es);
 }
 else
 {
  if (fdwroutine->ExplainForeignScan != ((void*)0))
   fdwroutine->ExplainForeignScan(fsstate, es);
 }
}
