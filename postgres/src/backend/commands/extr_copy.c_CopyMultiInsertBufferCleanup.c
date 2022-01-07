
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nused; TYPE_1__* resultRelInfo; int ** slots; int bistate; } ;
struct TYPE_8__ {int ti_options; } ;
struct TYPE_7__ {int ri_RelationDesc; int * ri_CopyMultiInsertBuffer; } ;
typedef TYPE_2__ CopyMultiInsertInfo ;
typedef TYPE_3__ CopyMultiInsertBuffer ;


 int Assert (int) ;
 int ExecDropSingleTupleTableSlot (int *) ;
 int FreeBulkInsertState (int ) ;
 int MAX_BUFFERED_TUPLES ;
 int pfree (TYPE_3__*) ;
 int table_finish_bulk_insert (int ,int ) ;

__attribute__((used)) static inline void
CopyMultiInsertBufferCleanup(CopyMultiInsertInfo *miinfo,
        CopyMultiInsertBuffer *buffer)
{
 int i;


 Assert(buffer->nused == 0);


 buffer->resultRelInfo->ri_CopyMultiInsertBuffer = ((void*)0);

 FreeBulkInsertState(buffer->bistate);


 for (i = 0; i < MAX_BUFFERED_TUPLES && buffer->slots[i] != ((void*)0); i++)
  ExecDropSingleTupleTableSlot(buffer->slots[i]);

 table_finish_bulk_insert(buffer->resultRelInfo->ri_RelationDesc,
        miinfo->ti_options);

 pfree(buffer);
}
