
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int TypeCacheEntry ;
struct TYPE_8__ {void* spl_rdatum; void* spl_ldatum; scalar_t__ spl_nright; scalar_t__ spl_nleft; } ;
struct TYPE_7__ {int n; TYPE_1__* vector; } ;
struct TYPE_6__ {int key; } ;
typedef int RangeType ;
typedef int OffsetNumber ;
typedef TYPE_2__ GistEntryVector ;
typedef TYPE_3__ GIST_SPLITVEC ;


 int * DatumGetRangeTypeP (int ) ;
 int FirstOffsetNumber ;
 int PLACE_LEFT (int *,int) ;
 int PLACE_RIGHT (int *,int) ;
 void* RangeTypePGetDatum (int *) ;

__attribute__((used)) static void
range_gist_fallback_split(TypeCacheEntry *typcache,
        GistEntryVector *entryvec,
        GIST_SPLITVEC *v)
{
 RangeType *left_range = ((void*)0);
 RangeType *right_range = ((void*)0);
 OffsetNumber i,
    maxoff,
    split_idx;

 maxoff = entryvec->n - 1;

 split_idx = (maxoff - FirstOffsetNumber) / 2 + FirstOffsetNumber;

 v->spl_nleft = 0;
 v->spl_nright = 0;
 for (i = FirstOffsetNumber; i <= maxoff; i++)
 {
  RangeType *range = DatumGetRangeTypeP(entryvec->vector[i].key);

  if (i < split_idx)
   PLACE_LEFT(range, i);
  else
   PLACE_RIGHT(range, i);
 }

 v->spl_ldatum = RangeTypePGetDatum(left_range);
 v->spl_rdatum = RangeTypePGetDatum(right_range);
}
