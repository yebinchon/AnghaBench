
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {long prev; long next; } ;
struct TYPE_8__ {int writing; long offsetBlockNumber; char* buffer; scalar_t__ buffer_size; int curBlockNumber; int firstBlockNumber; scalar_t__ pos; int dirty; scalar_t__ nbytes; } ;
struct TYPE_7__ {int nTapes; TYPE_2__* tapes; } ;
typedef TYPE_1__ LogicalTapeSet ;
typedef TYPE_2__ LogicalTape ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int ERROR ;
 TYPE_5__* TapeBlockGetTrailer (char*) ;
 scalar_t__ TapeBlockPayloadSize ;
 int elog (int ,char*) ;
 void* ltsGetFreeBlock (TYPE_1__*) ;
 int ltsWriteBlock (TYPE_1__*,int,void*) ;
 int memcpy (char*,void*,size_t) ;
 scalar_t__ palloc (scalar_t__) ;

void
LogicalTapeWrite(LogicalTapeSet *lts, int tapenum,
     void *ptr, size_t size)
{
 LogicalTape *lt;
 size_t nthistime;

 Assert(tapenum >= 0 && tapenum < lts->nTapes);
 lt = &lts->tapes[tapenum];
 Assert(lt->writing);
 Assert(lt->offsetBlockNumber == 0L);


 if (lt->buffer == ((void*)0))
 {
  lt->buffer = (char *) palloc(BLCKSZ);
  lt->buffer_size = BLCKSZ;
 }
 if (lt->curBlockNumber == -1)
 {
  Assert(lt->firstBlockNumber == -1);
  Assert(lt->pos == 0);

  lt->curBlockNumber = ltsGetFreeBlock(lts);
  lt->firstBlockNumber = lt->curBlockNumber;

  TapeBlockGetTrailer(lt->buffer)->prev = -1L;
 }

 Assert(lt->buffer_size == BLCKSZ);
 while (size > 0)
 {
  if (lt->pos >= TapeBlockPayloadSize)
  {

   long nextBlockNumber;

   if (!lt->dirty)
   {

    elog(ERROR, "invalid logtape state: should be dirty");
   }





   nextBlockNumber = ltsGetFreeBlock(lts);


   TapeBlockGetTrailer(lt->buffer)->next = nextBlockNumber;
   ltsWriteBlock(lts, lt->curBlockNumber, (void *) lt->buffer);


   TapeBlockGetTrailer(lt->buffer)->prev = lt->curBlockNumber;
   lt->curBlockNumber = nextBlockNumber;
   lt->pos = 0;
   lt->nbytes = 0;
  }

  nthistime = TapeBlockPayloadSize - lt->pos;
  if (nthistime > size)
   nthistime = size;
  Assert(nthistime > 0);

  memcpy(lt->buffer + lt->pos, ptr, nthistime);

  lt->dirty = 1;
  lt->pos += nthistime;
  if (lt->nbytes < lt->pos)
   lt->nbytes = lt->pos;
  ptr = (void *) ((char *) ptr + nthistime);
  size -= nthistime;
 }
}
