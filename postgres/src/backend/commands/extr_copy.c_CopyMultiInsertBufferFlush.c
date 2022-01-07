
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64 ;
typedef int TupleTableSlot ;
struct TYPE_18__ {int nused; int * linenos; int ** slots; int bistate; TYPE_2__* resultRelInfo; } ;
struct TYPE_17__ {int ti_options; int mycid; TYPE_3__* estate; TYPE_4__* cstate; } ;
struct TYPE_16__ {int line_buf_valid; int cur_lineno; int transition_capture; } ;
struct TYPE_15__ {TYPE_2__* es_result_relation_info; } ;
struct TYPE_14__ {scalar_t__ ri_NumIndices; TYPE_1__* ri_TrigDesc; int ri_RelationDesc; } ;
struct TYPE_13__ {scalar_t__ trig_insert_new_table; scalar_t__ trig_insert_after_row; } ;
typedef TYPE_2__ ResultRelInfo ;
typedef int MemoryContext ;
typedef int List ;
typedef TYPE_3__ EState ;
typedef TYPE_4__* CopyState ;
typedef TYPE_5__ CopyMultiInsertInfo ;
typedef TYPE_6__ CopyMultiInsertBuffer ;
typedef int CommandId ;


 int ExecARInsertTriggers (TYPE_3__*,TYPE_2__*,int *,int *,int ) ;
 int ExecClearTuple (int *) ;
 int * ExecInsertIndexTuples (int *,TYPE_3__*,int,int *,int *) ;
 int GetPerTupleMemoryContext (TYPE_3__*) ;
 int MemoryContextSwitchTo (int ) ;
 int * NIL ;
 int list_free (int *) ;
 int table_multi_insert (int ,int **,int,int ,int,int ) ;

__attribute__((used)) static inline void
CopyMultiInsertBufferFlush(CopyMultiInsertInfo *miinfo,
         CopyMultiInsertBuffer *buffer)
{
 MemoryContext oldcontext;
 int i;
 uint64 save_cur_lineno;
 CopyState cstate = miinfo->cstate;
 EState *estate = miinfo->estate;
 CommandId mycid = miinfo->mycid;
 int ti_options = miinfo->ti_options;
 bool line_buf_valid = cstate->line_buf_valid;
 int nused = buffer->nused;
 ResultRelInfo *resultRelInfo = buffer->resultRelInfo;
 TupleTableSlot **slots = buffer->slots;


 estate->es_result_relation_info = resultRelInfo;





 cstate->line_buf_valid = 0;
 save_cur_lineno = cstate->cur_lineno;





 oldcontext = MemoryContextSwitchTo(GetPerTupleMemoryContext(estate));
 table_multi_insert(resultRelInfo->ri_RelationDesc,
        slots,
        nused,
        mycid,
        ti_options,
        buffer->bistate);
 MemoryContextSwitchTo(oldcontext);

 for (i = 0; i < nused; i++)
 {




  if (resultRelInfo->ri_NumIndices > 0)
  {
   List *recheckIndexes;

   cstate->cur_lineno = buffer->linenos[i];
   recheckIndexes =
    ExecInsertIndexTuples(buffer->slots[i], estate, 0, ((void*)0),
           NIL);
   ExecARInsertTriggers(estate, resultRelInfo,
         slots[i], recheckIndexes,
         cstate->transition_capture);
   list_free(recheckIndexes);
  }





  else if (resultRelInfo->ri_TrigDesc != ((void*)0) &&
     (resultRelInfo->ri_TrigDesc->trig_insert_after_row ||
      resultRelInfo->ri_TrigDesc->trig_insert_new_table))
  {
   cstate->cur_lineno = buffer->linenos[i];
   ExecARInsertTriggers(estate, resultRelInfo,
         slots[i], NIL, cstate->transition_capture);
  }

  ExecClearTuple(slots[i]);
 }


 buffer->nused = 0;


 cstate->line_buf_valid = line_buf_valid;
 cstate->cur_lineno = save_cur_lineno;
}
