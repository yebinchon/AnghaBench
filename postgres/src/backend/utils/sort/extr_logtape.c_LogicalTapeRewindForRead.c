
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int frozen; size_t max_size; int writing; int nbytes; size_t buffer_size; long firstBlockNumber; long nextBlockNumber; scalar_t__ pos; int * buffer; int curBlockNumber; scalar_t__ dirty; } ;
struct TYPE_7__ {int nTapes; TYPE_2__* tapes; } ;
typedef TYPE_1__ LogicalTapeSet ;
typedef TYPE_2__ LogicalTape ;


 int Assert (int) ;
 size_t BLCKSZ ;
 int TapeBlockSetNBytes (int *,int) ;
 int VALGRIND_MAKE_MEM_DEFINED (int *,int) ;
 int ltsReadFillBuffer (TYPE_1__*,TYPE_2__*) ;
 int ltsWriteBlock (TYPE_1__*,int ,void*) ;
 int * palloc (size_t) ;
 int pfree (int *) ;

void
LogicalTapeRewindForRead(LogicalTapeSet *lts, int tapenum, size_t buffer_size)
{
 LogicalTape *lt;

 Assert(tapenum >= 0 && tapenum < lts->nTapes);
 lt = &lts->tapes[tapenum];




 if (lt->frozen)
  buffer_size = BLCKSZ;
 else
 {

  if (buffer_size < BLCKSZ)
   buffer_size = BLCKSZ;


  if (buffer_size > lt->max_size)
   buffer_size = lt->max_size;


  buffer_size -= buffer_size % BLCKSZ;
 }

 if (lt->writing)
 {




  if (lt->dirty)
  {
   VALGRIND_MAKE_MEM_DEFINED(lt->buffer + lt->nbytes,
           lt->buffer_size - lt->nbytes);

   TapeBlockSetNBytes(lt->buffer, lt->nbytes);
   ltsWriteBlock(lts, lt->curBlockNumber, (void *) lt->buffer);
  }
  lt->writing = 0;
 }
 else
 {




  Assert(lt->frozen);
 }


 if (lt->buffer)
  pfree(lt->buffer);
 lt->buffer = ((void*)0);
 lt->buffer_size = 0;
 if (lt->firstBlockNumber != -1L)
 {
  lt->buffer = palloc(buffer_size);
  lt->buffer_size = buffer_size;
 }


 lt->nextBlockNumber = lt->firstBlockNumber;
 lt->pos = 0;
 lt->nbytes = 0;
 ltsReadFillBuffer(lts, lt);
}
