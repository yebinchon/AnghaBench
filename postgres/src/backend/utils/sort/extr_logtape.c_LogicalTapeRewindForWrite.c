
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int writing; int dirty; long firstBlockNumber; long curBlockNumber; scalar_t__ buffer_size; int * buffer; scalar_t__ nbytes; scalar_t__ pos; int frozen; } ;
struct TYPE_4__ {int nTapes; TYPE_2__* tapes; } ;
typedef TYPE_1__ LogicalTapeSet ;
typedef TYPE_2__ LogicalTape ;


 int Assert (int) ;
 int pfree (int *) ;

void
LogicalTapeRewindForWrite(LogicalTapeSet *lts, int tapenum)
{
 LogicalTape *lt;

 Assert(tapenum >= 0 && tapenum < lts->nTapes);
 lt = &lts->tapes[tapenum];

 Assert(!lt->writing && !lt->frozen);
 lt->writing = 1;
 lt->dirty = 0;
 lt->firstBlockNumber = -1L;
 lt->curBlockNumber = -1L;
 lt->pos = 0;
 lt->nbytes = 0;
 if (lt->buffer)
  pfree(lt->buffer);
 lt->buffer = ((void*)0);
 lt->buffer_size = 0;
}
