
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int next; } ;
struct TYPE_7__ {int frozen; scalar_t__ buffer_size; long curBlockNumber; int nbytes; int pos; scalar_t__ buffer; int nextBlockNumber; } ;
struct TYPE_6__ {int nTapes; TYPE_2__* tapes; } ;
typedef TYPE_1__ LogicalTapeSet ;
typedef TYPE_2__ LogicalTape ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;
 int ERROR ;
 TYPE_4__* TapeBlockGetTrailer (scalar_t__) ;
 int TapeBlockPayloadSize ;
 int elog (int ,char*) ;
 int ltsReadBlock (TYPE_1__*,long,void*) ;

void
LogicalTapeSeek(LogicalTapeSet *lts, int tapenum,
    long blocknum, int offset)
{
 LogicalTape *lt;

 Assert(tapenum >= 0 && tapenum < lts->nTapes);
 lt = &lts->tapes[tapenum];
 Assert(lt->frozen);
 Assert(offset >= 0 && offset <= TapeBlockPayloadSize);
 Assert(lt->buffer_size == BLCKSZ);

 if (blocknum != lt->curBlockNumber)
 {
  ltsReadBlock(lts, blocknum, (void *) lt->buffer);
  lt->curBlockNumber = blocknum;
  lt->nbytes = TapeBlockPayloadSize;
  lt->nextBlockNumber = TapeBlockGetTrailer(lt->buffer)->next;
 }

 if (offset > lt->nbytes)
  elog(ERROR, "invalid tape seek position");
 lt->pos = offset;
}
