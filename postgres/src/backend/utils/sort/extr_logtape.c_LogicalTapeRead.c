
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ pos; scalar_t__ nbytes; size_t buffer; int writing; } ;
struct TYPE_6__ {int nTapes; TYPE_2__* tapes; } ;
typedef TYPE_1__ LogicalTapeSet ;
typedef TYPE_2__ LogicalTape ;


 int Assert (int) ;
 int ltsReadFillBuffer (TYPE_1__*,TYPE_2__*) ;
 int memcpy (void*,size_t,size_t) ;

size_t
LogicalTapeRead(LogicalTapeSet *lts, int tapenum,
    void *ptr, size_t size)
{
 LogicalTape *lt;
 size_t nread = 0;
 size_t nthistime;

 Assert(tapenum >= 0 && tapenum < lts->nTapes);
 lt = &lts->tapes[tapenum];
 Assert(!lt->writing);

 while (size > 0)
 {
  if (lt->pos >= lt->nbytes)
  {

   if (!ltsReadFillBuffer(lts, lt))
    break;
  }

  nthistime = lt->nbytes - lt->pos;
  if (nthistime > size)
   nthistime = size;
  Assert(nthistime > 0);

  memcpy(ptr, lt->buffer + lt->pos, nthistime);

  lt->pos += nthistime;
  ptr = (void *) ((char *) ptr + nthistime);
  size -= nthistime;
  nread += nthistime;
 }

 return nread;
}
