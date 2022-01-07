
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {long offsetBlockNumber; scalar_t__ buffer_size; long curBlockNumber; int pos; } ;
struct TYPE_4__ {int nTapes; TYPE_2__* tapes; } ;
typedef TYPE_1__ LogicalTapeSet ;
typedef TYPE_2__ LogicalTape ;


 int Assert (int) ;
 scalar_t__ BLCKSZ ;

void
LogicalTapeTell(LogicalTapeSet *lts, int tapenum,
    long *blocknum, int *offset)
{
 LogicalTape *lt;

 Assert(tapenum >= 0 && tapenum < lts->nTapes);
 lt = &lts->tapes[tapenum];
 Assert(lt->offsetBlockNumber == 0L);


 Assert(lt->buffer_size == BLCKSZ);

 *blocknum = lt->curBlockNumber;
 *offset = lt->pos;
}
