
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ maxoff; } ;
struct TYPE_9__ {int sizeOfBloomTuple; } ;
struct TYPE_8__ {scalar_t__ pd_lower; scalar_t__ pd_upper; } ;
typedef scalar_t__ Pointer ;
typedef TYPE_1__* PageHeader ;
typedef scalar_t__ Page ;
typedef int BloomTuple ;
typedef TYPE_2__ BloomState ;
typedef TYPE_3__* BloomPageOpaque ;


 int Assert (int) ;
 int BloomPageGetFreeSpace (TYPE_2__*,scalar_t__) ;
 TYPE_3__* BloomPageGetOpaque (scalar_t__) ;
 int * BloomPageGetTuple (TYPE_2__*,scalar_t__,scalar_t__) ;
 int BloomPageIsDeleted (scalar_t__) ;
 int PageIsNew (scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__,int ) ;

bool
BloomPageAddItem(BloomState *state, Page page, BloomTuple *tuple)
{
 BloomTuple *itup;
 BloomPageOpaque opaque;
 Pointer ptr;


 Assert(!PageIsNew(page) && !BloomPageIsDeleted(page));


 if (BloomPageGetFreeSpace(state, page) < state->sizeOfBloomTuple)
  return 0;


 opaque = BloomPageGetOpaque(page);
 itup = BloomPageGetTuple(state, page, opaque->maxoff + 1);
 memcpy((Pointer) itup, (Pointer) tuple, state->sizeOfBloomTuple);


 opaque->maxoff++;
 ptr = (Pointer) BloomPageGetTuple(state, page, opaque->maxoff + 1);
 ((PageHeader) page)->pd_lower = ptr - page;


 Assert(((PageHeader) page)->pd_lower <= ((PageHeader) page)->pd_upper);

 return 1;
}
