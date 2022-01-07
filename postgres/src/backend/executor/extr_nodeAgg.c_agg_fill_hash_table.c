
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_12__ {int table_filled; TYPE_1__* perhash; TYPE_2__* tmpcontext; } ;
struct TYPE_11__ {int * ecxt_outertuple; } ;
struct TYPE_10__ {int hashiter; int hashtable; } ;
typedef TYPE_2__ ExprContext ;
typedef TYPE_3__ AggState ;


 int ResetExprContext (TYPE_2__*) ;
 int ResetTupleHashIterator (int ,int *) ;
 scalar_t__ TupIsNull (int *) ;
 int advance_aggregates (TYPE_3__*) ;
 int * fetch_input_tuple (TYPE_3__*) ;
 int lookup_hash_entries (TYPE_3__*) ;
 int select_current_set (TYPE_3__*,int ,int) ;

__attribute__((used)) static void
agg_fill_hash_table(AggState *aggstate)
{
 TupleTableSlot *outerslot;
 ExprContext *tmpcontext = aggstate->tmpcontext;





 for (;;)
 {
  outerslot = fetch_input_tuple(aggstate);
  if (TupIsNull(outerslot))
   break;


  tmpcontext->ecxt_outertuple = outerslot;


  lookup_hash_entries(aggstate);


  advance_aggregates(aggstate);





  ResetExprContext(aggstate->tmpcontext);
 }

 aggstate->table_filled = 1;

 select_current_set(aggstate, 0, 1);
 ResetTupleHashIterator(aggstate->perhash[0].hashtable,
         &aggstate->perhash[0].hashiter);
}
