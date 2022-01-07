
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int status; TYPE_7__* qd; scalar_t__ lazyEval; int stmt; scalar_t__ setsResult; } ;
typedef TYPE_2__ execution_state ;
struct TYPE_13__ {scalar_t__ operation; int * queryEnv; } ;
struct TYPE_9__ {scalar_t__ mydest; } ;
struct TYPE_12__ {int filter; int cxt; int tstore; TYPE_1__ pub; } ;
struct TYPE_11__ {int paramLI; int src; int junkFilter; int tstore; } ;
typedef TYPE_3__* SQLFunctionCachePtr ;
typedef int DestReceiver ;
typedef TYPE_4__ DR_sqlfunction ;


 int ActiveSnapshotSet () ;
 int Assert (int) ;
 scalar_t__ CMD_UTILITY ;
 int * CreateDestReceiver (scalar_t__) ;
 TYPE_7__* CreateQueryDesc (int ,int ,int ,int ,int *,int ,int *,int ) ;
 int CurrentMemoryContext ;
 scalar_t__ DestSQLFunction ;
 int EXEC_FLAG_SKIP_TRIGGERS ;
 int ExecutorStart (TYPE_7__*,int) ;
 int F_EXEC_RUN ;
 int GetActiveSnapshot () ;
 int InvalidSnapshot ;
 int * None_Receiver ;

__attribute__((used)) static void
postquel_start(execution_state *es, SQLFunctionCachePtr fcache)
{
 DestReceiver *dest;

 Assert(es->qd == ((void*)0));


 Assert(ActiveSnapshotSet());





 if (es->setsResult)
 {
  DR_sqlfunction *myState;

  dest = CreateDestReceiver(DestSQLFunction);

  myState = (DR_sqlfunction *) dest;
  Assert(myState->pub.mydest == DestSQLFunction);
  myState->tstore = fcache->tstore;
  myState->cxt = CurrentMemoryContext;
  myState->filter = fcache->junkFilter;
 }
 else
  dest = None_Receiver;

 es->qd = CreateQueryDesc(es->stmt,
        fcache->src,
        GetActiveSnapshot(),
        InvalidSnapshot,
        dest,
        fcache->paramLI,
        es->qd ? es->qd->queryEnv : ((void*)0),
        0);


 if (es->qd->operation != CMD_UTILITY)
 {







  int eflags;

  if (es->lazyEval)
   eflags = EXEC_FLAG_SKIP_TRIGGERS;
  else
   eflags = 0;
  ExecutorStart(es->qd, eflags);
 }

 es->status = F_EXEC_RUN;
}
