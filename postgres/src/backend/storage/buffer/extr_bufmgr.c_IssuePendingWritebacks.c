
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nr_pending; TYPE_2__* pending_writebacks; } ;
typedef TYPE_1__ WritebackContext ;
struct TYPE_8__ {scalar_t__ forkNum; scalar_t__ blockNum; int rnode; } ;
struct TYPE_7__ {TYPE_3__ tag; } ;
typedef int Size ;
typedef int SMgrRelation ;
typedef TYPE_2__ PendingWriteback ;
typedef TYPE_3__ BufferTag ;


 int InvalidBackendId ;
 int RelFileNodeEquals (int ,int ) ;
 int buffertag_comparator ;
 int qsort (TYPE_2__**,int,int,int ) ;
 int smgropen (int ,int ) ;
 int smgrwriteback (int ,scalar_t__,scalar_t__,int) ;

void
IssuePendingWritebacks(WritebackContext *context)
{
 int i;

 if (context->nr_pending == 0)
  return;





 qsort(&context->pending_writebacks, context->nr_pending,
    sizeof(PendingWriteback), buffertag_comparator);






 for (i = 0; i < context->nr_pending; i++)
 {
  PendingWriteback *cur;
  PendingWriteback *next;
  SMgrRelation reln;
  int ahead;
  BufferTag tag;
  Size nblocks = 1;

  cur = &context->pending_writebacks[i];
  tag = cur->tag;





  for (ahead = 0; i + ahead + 1 < context->nr_pending; ahead++)
  {
   next = &context->pending_writebacks[i + ahead + 1];


   if (!RelFileNodeEquals(cur->tag.rnode, next->tag.rnode) ||
    cur->tag.forkNum != next->tag.forkNum)
    break;


   if (cur->tag.blockNum == next->tag.blockNum)
    continue;


   if (cur->tag.blockNum + 1 != next->tag.blockNum)
    break;

   nblocks++;
   cur = next;
  }

  i += ahead;


  reln = smgropen(tag.rnode, InvalidBackendId);
  smgrwriteback(reln, tag.forkNum, tag.blockNum, nblocks);
 }

 context->nr_pending = 0;
}
