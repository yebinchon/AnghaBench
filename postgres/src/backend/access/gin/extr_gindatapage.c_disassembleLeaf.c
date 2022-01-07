
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nitems; int node; int * items; int * seg; int action; } ;
typedef TYPE_1__ leafSegmentInfo ;
struct TYPE_6__ {int oldformat; int segments; } ;
typedef TYPE_2__ disassembledLeaf ;
typedef scalar_t__ Pointer ;
typedef int Page ;
typedef int ItemPointerData ;
typedef int ItemPointer ;
typedef int GinPostingList ;


 int GIN_SEGMENT_REPLACE ;
 int GIN_SEGMENT_UNMODIFIED ;
 int * GinDataLeafPageGetPostingList (int ) ;
 scalar_t__ GinDataLeafPageGetPostingListSize (int ) ;
 int * GinNextPostingListSegment (int *) ;
 scalar_t__ GinPageIsCompressed (int ) ;
 int dataLeafPageGetUncompressed (int ,int*) ;
 int dlist_init (int *) ;
 int dlist_push_tail (int *,int *) ;
 int memcpy (int *,int ,int) ;
 void* palloc (int) ;
 TYPE_2__* palloc0 (int) ;

__attribute__((used)) static disassembledLeaf *
disassembleLeaf(Page page)
{
 disassembledLeaf *leaf;
 GinPostingList *seg;
 Pointer segbegin;
 Pointer segend;

 leaf = palloc0(sizeof(disassembledLeaf));
 dlist_init(&leaf->segments);

 if (GinPageIsCompressed(page))
 {



  seg = GinDataLeafPageGetPostingList(page);
  segbegin = (Pointer) seg;
  segend = segbegin + GinDataLeafPageGetPostingListSize(page);
  while ((Pointer) seg < segend)
  {
   leafSegmentInfo *seginfo = palloc(sizeof(leafSegmentInfo));

   seginfo->action = GIN_SEGMENT_UNMODIFIED;
   seginfo->seg = seg;
   seginfo->items = ((void*)0);
   seginfo->nitems = 0;
   dlist_push_tail(&leaf->segments, &seginfo->node);

   seg = GinNextPostingListSegment(seg);
  }
  leaf->oldformat = 0;
 }
 else
 {





  ItemPointer uncompressed;
  int nuncompressed;
  leafSegmentInfo *seginfo;

  uncompressed = dataLeafPageGetUncompressed(page, &nuncompressed);

  if (nuncompressed > 0)
  {
   seginfo = palloc(sizeof(leafSegmentInfo));

   seginfo->action = GIN_SEGMENT_REPLACE;
   seginfo->seg = ((void*)0);
   seginfo->items = palloc(nuncompressed * sizeof(ItemPointerData));
   memcpy(seginfo->items, uncompressed, nuncompressed * sizeof(ItemPointerData));
   seginfo->nitems = nuncompressed;

   dlist_push_tail(&leaf->segments, &seginfo->node);
  }

  leaf->oldformat = 1;
 }

 return leaf;
}
