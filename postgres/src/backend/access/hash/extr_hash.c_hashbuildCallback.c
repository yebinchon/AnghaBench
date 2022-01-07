
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int indtuples; int heapRel; scalar_t__ spool; } ;
struct TYPE_6__ {int t_tid; } ;
typedef int Relation ;
typedef int * ItemPointer ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__ HashBuildState ;
typedef int Datum ;


 int RelationGetDescr (int ) ;
 int _h_spool (scalar_t__,int *,int *,int*) ;
 int _hash_convert_tuple (int ,int *,int*,int *,int*) ;
 int _hash_doinsert (int ,TYPE_1__*,int ) ;
 TYPE_1__* index_form_tuple (int ,int *,int*) ;
 int pfree (TYPE_1__*) ;

__attribute__((used)) static void
hashbuildCallback(Relation index,
      ItemPointer tid,
      Datum *values,
      bool *isnull,
      bool tupleIsAlive,
      void *state)
{
 HashBuildState *buildstate = (HashBuildState *) state;
 Datum index_values[1];
 bool index_isnull[1];
 IndexTuple itup;


 if (!_hash_convert_tuple(index,
        values, isnull,
        index_values, index_isnull))
  return;


 if (buildstate->spool)
  _h_spool(buildstate->spool, tid, index_values, index_isnull);
 else
 {

  itup = index_form_tuple(RelationGetDescr(index),
        index_values, index_isnull);
  itup->t_tid = *tid;
  _hash_doinsert(index, itup, buildstate->heapRel);
  pfree(itup);
 }

 buildstate->indtuples += 1;
}
