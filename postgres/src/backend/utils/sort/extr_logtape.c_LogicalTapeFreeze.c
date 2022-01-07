
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {long firstblocknumber; } ;
typedef TYPE_1__ TapeShare ;
struct TYPE_12__ {long next; } ;
struct TYPE_11__ {int writing; long offsetBlockNumber; scalar_t__ buffer; scalar_t__ nbytes; scalar_t__ buffer_size; long curBlockNumber; int frozen; long firstBlockNumber; long nextBlockNumber; scalar_t__ pos; scalar_t__ dirty; } ;
struct TYPE_10__ {int nTapes; int pfile; TYPE_3__* tapes; } ;
typedef TYPE_2__ LogicalTapeSet ;
typedef TYPE_3__ LogicalTape ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int BufFileExportShared (int ) ;
 scalar_t__ TapeBlockGetNBytes (scalar_t__) ;
 TYPE_6__* TapeBlockGetTrailer (scalar_t__) ;
 scalar_t__ TapeBlockIsLast (scalar_t__) ;
 int TapeBlockSetNBytes (scalar_t__,scalar_t__) ;
 int VALGRIND_MAKE_MEM_DEFINED (scalar_t__,scalar_t__) ;
 int ltsReadBlock (TYPE_2__*,long,void*) ;
 int ltsWriteBlock (TYPE_2__*,long,void*) ;
 scalar_t__ palloc (scalar_t__) ;
 int pfree (scalar_t__) ;

void
LogicalTapeFreeze(LogicalTapeSet *lts, int tapenum, TapeShare *share)
{
 LogicalTape *lt;

 Assert(tapenum >= 0 && tapenum < lts->nTapes);
 lt = &lts->tapes[tapenum];
 Assert(lt->writing);
 Assert(lt->offsetBlockNumber == 0L);





 if (lt->dirty)
 {
  VALGRIND_MAKE_MEM_DEFINED(lt->buffer + lt->nbytes,
          lt->buffer_size - lt->nbytes);

  TapeBlockSetNBytes(lt->buffer, lt->nbytes);
  ltsWriteBlock(lts, lt->curBlockNumber, (void *) lt->buffer);
  lt->writing = 0;
 }
 lt->writing = 0;
 lt->frozen = 1;
 if (!lt->buffer || lt->buffer_size != BLCKSZ)
 {
  if (lt->buffer)
   pfree(lt->buffer);
  lt->buffer = palloc(BLCKSZ);
  lt->buffer_size = BLCKSZ;
 }


 lt->curBlockNumber = lt->firstBlockNumber;
 lt->pos = 0;
 lt->nbytes = 0;

 if (lt->firstBlockNumber == -1L)
  lt->nextBlockNumber = -1L;
 ltsReadBlock(lts, lt->curBlockNumber, (void *) lt->buffer);
 if (TapeBlockIsLast(lt->buffer))
  lt->nextBlockNumber = -1L;
 else
  lt->nextBlockNumber = TapeBlockGetTrailer(lt->buffer)->next;
 lt->nbytes = TapeBlockGetNBytes(lt->buffer);


 if (share)
 {
  BufFileExportShared(lts->pfile);
  share->firstblocknumber = lt->firstBlockNumber;
 }
}
