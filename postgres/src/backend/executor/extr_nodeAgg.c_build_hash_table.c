
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_11__ {TYPE_4__* state; } ;
struct TYPE_16__ {TYPE_10__ ps; } ;
struct TYPE_19__ {scalar_t__ aggstrategy; int numtrans; int num_hashes; int aggsplit; TYPE_6__* hashcontext; TYPE_5__ ss; TYPE_7__* perhash; TYPE_1__* tmpcontext; } ;
struct TYPE_18__ {TYPE_3__* aggnode; int hashfunctions; int eqfuncoids; int hashGrpColIdxHash; int numCols; TYPE_2__* hashslot; scalar_t__ hashtable; } ;
struct TYPE_17__ {int ecxt_per_tuple_memory; } ;
struct TYPE_15__ {int es_query_cxt; } ;
struct TYPE_14__ {scalar_t__ numGroups; int grpCollations; } ;
struct TYPE_13__ {int tts_tupleDescriptor; } ;
struct TYPE_12__ {int ecxt_per_tuple_memory; } ;
typedef int Size ;
typedef int MemoryContext ;
typedef TYPE_7__* AggStatePerHash ;
typedef int AggStatePerGroupData ;
typedef TYPE_8__ AggState ;


 scalar_t__ AGG_HASHED ;
 scalar_t__ AGG_MIXED ;
 int Assert (int) ;
 scalar_t__ BuildTupleHashTableExt (TYPE_10__*,int ,int ,int ,int ,int ,int ,scalar_t__,int,int ,int ,int ,int ) ;
 int DO_AGGSPLIT_SKIPFINAL (int ) ;
 int ResetTupleHashTable (scalar_t__) ;

__attribute__((used)) static void
build_hash_table(AggState *aggstate)
{
 MemoryContext tmpmem = aggstate->tmpcontext->ecxt_per_tuple_memory;
 Size additionalsize;
 int i;

 Assert(aggstate->aggstrategy == AGG_HASHED || aggstate->aggstrategy == AGG_MIXED);

 additionalsize = aggstate->numtrans * sizeof(AggStatePerGroupData);

 for (i = 0; i < aggstate->num_hashes; ++i)
 {
  AggStatePerHash perhash = &aggstate->perhash[i];

  Assert(perhash->aggnode->numGroups > 0);

  if (perhash->hashtable)
   ResetTupleHashTable(perhash->hashtable);
  else
   perhash->hashtable = BuildTupleHashTableExt(&aggstate->ss.ps,
              perhash->hashslot->tts_tupleDescriptor,
              perhash->numCols,
              perhash->hashGrpColIdxHash,
              perhash->eqfuncoids,
              perhash->hashfunctions,
              perhash->aggnode->grpCollations,
              perhash->aggnode->numGroups,
              additionalsize,
              aggstate->ss.ps.state->es_query_cxt,
              aggstate->hashcontext->ecxt_per_tuple_memory,
              tmpmem,
              DO_AGGSPLIT_SKIPFINAL(aggstate->aggsplit));
 }
}
