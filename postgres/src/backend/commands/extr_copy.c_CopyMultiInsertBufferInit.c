
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_3__ {scalar_t__ nused; int bistate; int * resultRelInfo; int slots; } ;
typedef int ResultRelInfo ;
typedef TYPE_1__ CopyMultiInsertBuffer ;


 int GetBulkInsertState () ;
 int MAX_BUFFERED_TUPLES ;
 int memset (int ,int ,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static CopyMultiInsertBuffer *
CopyMultiInsertBufferInit(ResultRelInfo *rri)
{
 CopyMultiInsertBuffer *buffer;

 buffer = (CopyMultiInsertBuffer *) palloc(sizeof(CopyMultiInsertBuffer));
 memset(buffer->slots, 0, sizeof(TupleTableSlot *) * MAX_BUFFERED_TUPLES);
 buffer->resultRelInfo = rri;
 buffer->bistate = GetBulkInsertState();
 buffer->nused = 0;

 return buffer;
}
