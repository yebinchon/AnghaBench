
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {long prev; long next; } ;
struct TYPE_7__ {int frozen; scalar_t__ buffer_size; int pos; long curBlockNumber; long firstBlockNumber; long nextBlockNumber; scalar_t__ buffer; scalar_t__ nbytes; } ;
struct TYPE_6__ {int nTapes; TYPE_2__* tapes; } ;
typedef TYPE_1__ LogicalTapeSet ;
typedef TYPE_2__ LogicalTape ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int ERROR ;
 TYPE_4__* TapeBlockGetTrailer (scalar_t__) ;
 scalar_t__ TapeBlockPayloadSize ;
 int elog (int ,char*,...) ;
 int ltsReadBlock (TYPE_1__*,long,void*) ;

size_t
LogicalTapeBackspace(LogicalTapeSet *lts, int tapenum, size_t size)
{
 LogicalTape *lt;
 size_t seekpos = 0;

 Assert(tapenum >= 0 && tapenum < lts->nTapes);
 lt = &lts->tapes[tapenum];
 Assert(lt->frozen);
 Assert(lt->buffer_size == BLCKSZ);




 if (size <= (size_t) lt->pos)
 {
  lt->pos -= (int) size;
  return size;
 }






 seekpos = (size_t) lt->pos;
 while (size > seekpos)
 {
  long prev = TapeBlockGetTrailer(lt->buffer)->prev;

  if (prev == -1L)
  {

   if (lt->curBlockNumber != lt->firstBlockNumber)
    elog(ERROR, "unexpected end of tape");
   lt->pos = 0;
   return seekpos;
  }

  ltsReadBlock(lts, prev, (void *) lt->buffer);

  if (TapeBlockGetTrailer(lt->buffer)->next != lt->curBlockNumber)
   elog(ERROR, "broken tape, next of block %ld is %ld, expected %ld",
     prev,
     TapeBlockGetTrailer(lt->buffer)->next,
     lt->curBlockNumber);

  lt->nbytes = TapeBlockPayloadSize;
  lt->curBlockNumber = prev;
  lt->nextBlockNumber = TapeBlockGetTrailer(lt->buffer)->next;

  seekpos += TapeBlockPayloadSize;
 }






 lt->pos = seekpos - size;
 return size;
}
