
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* buffer; } ;
struct TYPE_5__ {int nTapes; struct TYPE_5__* freeBlocks; TYPE_2__* tapes; int pfile; } ;
typedef TYPE_1__ LogicalTapeSet ;
typedef TYPE_2__ LogicalTape ;


 int BufFileClose (int ) ;
 int pfree (TYPE_1__*) ;

void
LogicalTapeSetClose(LogicalTapeSet *lts)
{
 LogicalTape *lt;
 int i;

 BufFileClose(lts->pfile);
 for (i = 0; i < lts->nTapes; i++)
 {
  lt = &lts->tapes[i];
  if (lt->buffer)
   pfree(lt->buffer);
 }
 pfree(lts->freeBlocks);
 pfree(lts);
}
