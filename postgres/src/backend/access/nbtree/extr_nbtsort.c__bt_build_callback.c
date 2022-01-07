
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int havedead; int indtuples; int * spool2; int * spool; } ;
typedef int Relation ;
typedef int ItemPointer ;
typedef int Datum ;
typedef TYPE_1__ BTBuildState ;


 int _bt_spool (int *,int ,int *,int*) ;

__attribute__((used)) static void
_bt_build_callback(Relation index,
       ItemPointer tid,
       Datum *values,
       bool *isnull,
       bool tupleIsAlive,
       void *state)
{
 BTBuildState *buildstate = (BTBuildState *) state;





 if (tupleIsAlive || buildstate->spool2 == ((void*)0))
  _bt_spool(buildstate->spool, tid, values, isnull);
 else
 {

  buildstate->havedead = 1;
  _bt_spool(buildstate->spool2, tid, values, isnull);
 }

 buildstate->indtuples += 1;
}
