
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_5__ {int nbytes; unsigned char* bytes; int first; } ;
typedef int ItemPointerData ;
typedef int * ItemPointer ;
typedef TYPE_1__ GinPostingList ;


 int Assert (int) ;
 TYPE_1__* GinNextPostingListSegment (TYPE_1__*) ;
 int ItemPointerGetOffsetNumber (int *) ;
 int OffsetNumberIsValid (int ) ;
 scalar_t__ decode_varbyte (unsigned char**) ;
 scalar_t__ ginCompareItemPointers (int *,int *) ;
 int itemptr_to_uint64 (int *) ;
 int * palloc (int) ;
 int * repalloc (int *,int) ;
 int uint64_to_itemptr (int ,int *) ;

ItemPointer
ginPostingListDecodeAllSegments(GinPostingList *segment, int len, int *ndecoded_out)
{
 ItemPointer result;
 int nallocated;
 uint64 val;
 char *endseg = ((char *) segment) + len;
 int ndecoded;
 unsigned char *ptr;
 unsigned char *endptr;




 nallocated = segment->nbytes * 2 + 1;
 result = palloc(nallocated * sizeof(ItemPointerData));

 ndecoded = 0;
 while ((char *) segment < endseg)
 {

  if (ndecoded >= nallocated)
  {
   nallocated *= 2;
   result = repalloc(result, nallocated * sizeof(ItemPointerData));
  }


  Assert(OffsetNumberIsValid(ItemPointerGetOffsetNumber(&segment->first)));
  Assert(ndecoded == 0 || ginCompareItemPointers(&segment->first, &result[ndecoded - 1]) > 0);
  result[ndecoded] = segment->first;
  ndecoded++;

  val = itemptr_to_uint64(&segment->first);
  ptr = segment->bytes;
  endptr = segment->bytes + segment->nbytes;
  while (ptr < endptr)
  {

   if (ndecoded >= nallocated)
   {
    nallocated *= 2;
    result = repalloc(result, nallocated * sizeof(ItemPointerData));
   }

   val += decode_varbyte(&ptr);

   uint64_to_itemptr(val, &result[ndecoded]);
   ndecoded++;
  }
  segment = GinNextPostingListSegment(segment);
 }

 if (ndecoded_out)
  *ndecoded_out = ndecoded;
 return result;
}
