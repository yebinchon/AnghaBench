
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {long next; } ;
struct TYPE_4__ {scalar_t__ nbytes; scalar_t__ buffer_size; char* buffer; long nextBlockNumber; long curBlockNumber; int frozen; scalar_t__ offsetBlockNumber; scalar_t__ pos; } ;
typedef int LogicalTapeSet ;
typedef TYPE_1__ LogicalTape ;


 scalar_t__ BLCKSZ ;
 int TapeBlockGetNBytes (char*) ;
 TYPE_3__* TapeBlockGetTrailer (char*) ;
 scalar_t__ TapeBlockIsLast (char*) ;
 int ltsReadBlock (int *,long,void*) ;
 int ltsReleaseBlock (int *,long) ;

__attribute__((used)) static bool
ltsReadFillBuffer(LogicalTapeSet *lts, LogicalTape *lt)
{
 lt->pos = 0;
 lt->nbytes = 0;

 do
 {
  char *thisbuf = lt->buffer + lt->nbytes;
  long datablocknum = lt->nextBlockNumber;


  if (datablocknum == -1L)
   break;

  datablocknum += lt->offsetBlockNumber;


  ltsReadBlock(lts, datablocknum, (void *) thisbuf);
  if (!lt->frozen)
   ltsReleaseBlock(lts, datablocknum);
  lt->curBlockNumber = lt->nextBlockNumber;

  lt->nbytes += TapeBlockGetNBytes(thisbuf);
  if (TapeBlockIsLast(thisbuf))
  {
   lt->nextBlockNumber = -1L;

   break;
  }
  else
   lt->nextBlockNumber = TapeBlockGetTrailer(thisbuf)->next;


 } while (lt->buffer_size - lt->nbytes > BLCKSZ);

 return (lt->nbytes > 0);
}
