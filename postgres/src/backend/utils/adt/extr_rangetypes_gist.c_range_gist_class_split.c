
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TypeCacheEntry ;
struct TYPE_8__ {void* spl_rdatum; void* spl_ldatum; scalar_t__ spl_nright; scalar_t__ spl_nleft; } ;
struct TYPE_7__ {size_t n; TYPE_1__* vector; } ;
struct TYPE_6__ {int key; } ;
typedef scalar_t__ SplitLR ;
typedef int RangeType ;
typedef size_t OffsetNumber ;
typedef TYPE_2__ GistEntryVector ;
typedef TYPE_3__ GIST_SPLITVEC ;


 int Assert (int) ;
 int * DatumGetRangeTypeP (int ) ;
 size_t FirstOffsetNumber ;
 size_t OffsetNumberNext (size_t) ;
 int PLACE_LEFT (int *,size_t) ;
 int PLACE_RIGHT (int *,size_t) ;
 void* RangeTypePGetDatum (int *) ;
 scalar_t__ SPLIT_LEFT ;
 scalar_t__ SPLIT_RIGHT ;
 int get_gist_range_class (int *) ;

__attribute__((used)) static void
range_gist_class_split(TypeCacheEntry *typcache,
        GistEntryVector *entryvec,
        GIST_SPLITVEC *v,
        SplitLR *classes_groups)
{
 RangeType *left_range = ((void*)0);
 RangeType *right_range = ((void*)0);
 OffsetNumber i,
    maxoff;

 maxoff = entryvec->n - 1;

 v->spl_nleft = 0;
 v->spl_nright = 0;
 for (i = FirstOffsetNumber; i <= maxoff; i = OffsetNumberNext(i))
 {
  RangeType *range = DatumGetRangeTypeP(entryvec->vector[i].key);
  int class;


  class = get_gist_range_class(range);


  if (classes_groups[class] == SPLIT_LEFT)
   PLACE_LEFT(range, i);
  else
  {
   Assert(classes_groups[class] == SPLIT_RIGHT);
   PLACE_RIGHT(range, i);
  }
 }

 v->spl_ldatum = RangeTypePGetDatum(left_range);
 v->spl_rdatum = RangeTypePGetDatum(right_range);
}
