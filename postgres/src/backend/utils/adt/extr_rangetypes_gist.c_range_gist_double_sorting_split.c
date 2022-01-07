
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_1__ ;


struct TYPE_32__ {int fn_oid; } ;
struct TYPE_34__ {TYPE_1__ rng_subdiff_finfo; } ;
typedef TYPE_3__ TypeCacheEntry ;
struct TYPE_40__ {size_t index; scalar_t__ delta; } ;
struct TYPE_39__ {int entries_count; int first; size_t common_left; TYPE_4__* right_lower; TYPE_4__* left_upper; scalar_t__ has_subtype_diff; TYPE_3__* typcache; } ;
struct TYPE_38__ {size_t* spl_left; size_t* spl_right; void* spl_rdatum; void* spl_ldatum; scalar_t__ spl_nright; scalar_t__ spl_nleft; } ;
struct TYPE_37__ {size_t n; TYPE_2__* vector; } ;
struct TYPE_35__ {int val; } ;
struct TYPE_36__ {TYPE_4__ lower; TYPE_4__ upper; } ;
struct TYPE_33__ {int key; } ;
typedef int RangeType ;
typedef TYPE_4__ RangeBound ;
typedef size_t OffsetNumber ;
typedef TYPE_5__ NonEmptyRange ;
typedef TYPE_6__ GistEntryVector ;
typedef TYPE_7__ GIST_SPLITVEC ;
typedef TYPE_8__ ConsiderSplitContext ;
typedef TYPE_9__ CommonEntry ;


 int Assert (int) ;
 int * DatumGetRangeTypeP (int ) ;
 size_t FirstOffsetNumber ;
 size_t OffsetNumberNext (size_t) ;
 scalar_t__ OidIsValid (int ) ;
 int PLACE_LEFT (int *,int) ;
 int PLACE_RIGHT (int *,int) ;
 void* PointerGetDatum (int *) ;
 scalar_t__ call_subtype_diff (TYPE_3__*,int ,int ) ;
 int common_entry_cmp ;
 int interval_cmp_lower ;
 int interval_cmp_upper ;
 int memcpy (TYPE_5__*,TYPE_5__*,int) ;
 int memset (TYPE_8__*,int ,int) ;
 scalar_t__ palloc (int) ;
 int qsort (TYPE_9__*,int,int,int ) ;
 int qsort_arg (TYPE_5__*,int,int,int ,TYPE_3__*) ;
 scalar_t__ range_cmp_bounds (TYPE_3__*,TYPE_4__*,TYPE_4__*) ;
 int range_deserialize (TYPE_3__*,int *,TYPE_4__*,TYPE_4__*,int*) ;
 int range_gist_consider_split (TYPE_8__*,TYPE_4__*,int,TYPE_4__*,int) ;
 int range_gist_fallback_split (TYPE_3__*,TYPE_6__*,TYPE_7__*) ;

__attribute__((used)) static void
range_gist_double_sorting_split(TypeCacheEntry *typcache,
        GistEntryVector *entryvec,
        GIST_SPLITVEC *v)
{
 ConsiderSplitContext context;
 OffsetNumber i,
    maxoff;
 RangeType *range,
      *left_range = ((void*)0),
      *right_range = ((void*)0);
 int common_entries_count;
 NonEmptyRange *by_lower,
      *by_upper;
 CommonEntry *common_entries;
 int nentries,
    i1,
    i2;
 RangeBound *right_lower,
      *left_upper;

 memset(&context, 0, sizeof(ConsiderSplitContext));
 context.typcache = typcache;
 context.has_subtype_diff = OidIsValid(typcache->rng_subdiff_finfo.fn_oid);

 maxoff = entryvec->n - 1;
 nentries = context.entries_count = maxoff - FirstOffsetNumber + 1;
 context.first = 1;


 by_lower = (NonEmptyRange *) palloc(nentries * sizeof(NonEmptyRange));
 by_upper = (NonEmptyRange *) palloc(nentries * sizeof(NonEmptyRange));


 for (i = FirstOffsetNumber; i <= maxoff; i = OffsetNumberNext(i))
 {
  RangeType *range = DatumGetRangeTypeP(entryvec->vector[i].key);
  bool empty;

  range_deserialize(typcache, range,
        &by_lower[i - FirstOffsetNumber].lower,
        &by_lower[i - FirstOffsetNumber].upper,
        &empty);
  Assert(!empty);
 }





 memcpy(by_upper, by_lower, nentries * sizeof(NonEmptyRange));
 qsort_arg(by_lower, nentries, sizeof(NonEmptyRange),
     interval_cmp_lower, typcache);
 qsort_arg(by_upper, nentries, sizeof(NonEmptyRange),
     interval_cmp_upper, typcache);
 i1 = 0;
 i2 = 0;
 right_lower = &by_lower[i1].lower;
 left_upper = &by_upper[i2].lower;
 while (1)
 {



  while (i1 < nentries &&
      range_cmp_bounds(typcache, right_lower,
        &by_lower[i1].lower) == 0)
  {
   if (range_cmp_bounds(typcache, &by_lower[i1].upper,
         left_upper) > 0)
    left_upper = &by_lower[i1].upper;
   i1++;
  }
  if (i1 >= nentries)
   break;
  right_lower = &by_lower[i1].lower;





  while (i2 < nentries &&
      range_cmp_bounds(typcache, &by_upper[i2].upper,
        left_upper) <= 0)
   i2++;




  range_gist_consider_split(&context, right_lower, i1, left_upper, i2);
 }





 i1 = nentries - 1;
 i2 = nentries - 1;
 right_lower = &by_lower[i1].upper;
 left_upper = &by_upper[i2].upper;
 while (1)
 {



  while (i2 >= 0 &&
      range_cmp_bounds(typcache, left_upper,
        &by_upper[i2].upper) == 0)
  {
   if (range_cmp_bounds(typcache, &by_upper[i2].lower,
         right_lower) < 0)
    right_lower = &by_upper[i2].lower;
   i2--;
  }
  if (i2 < 0)
   break;
  left_upper = &by_upper[i2].upper;





  while (i1 >= 0 &&
      range_cmp_bounds(typcache, &by_lower[i1].lower,
        right_lower) >= 0)
   i1--;




  range_gist_consider_split(&context, right_lower, i1 + 1,
          left_upper, i2 + 1);
 }




 if (context.first)
 {
  range_gist_fallback_split(typcache, entryvec, v);
  return;
 }
 v->spl_left = (OffsetNumber *) palloc(nentries * sizeof(OffsetNumber));
 v->spl_right = (OffsetNumber *) palloc(nentries * sizeof(OffsetNumber));
 v->spl_nleft = 0;
 v->spl_nright = 0;





 common_entries_count = 0;
 common_entries = (CommonEntry *) palloc(nentries * sizeof(CommonEntry));





 for (i = FirstOffsetNumber; i <= maxoff; i = OffsetNumberNext(i))
 {
  RangeBound lower,
     upper;
  bool empty;




  range = DatumGetRangeTypeP(entryvec->vector[i].key);

  range_deserialize(typcache, range, &lower, &upper, &empty);

  if (range_cmp_bounds(typcache, &upper, context.left_upper) <= 0)
  {

   if (range_cmp_bounds(typcache, &lower, context.right_lower) >= 0)
   {

    common_entries[common_entries_count].index = i;
    if (context.has_subtype_diff)
    {




     common_entries[common_entries_count].delta =
      call_subtype_diff(typcache,
            lower.val,
            context.right_lower->val) -
      call_subtype_diff(typcache,
            context.left_upper->val,
            upper.val);
    }
    else
    {

     common_entries[common_entries_count].delta = 0;
    }
    common_entries_count++;
   }
   else
   {

    PLACE_LEFT(range, i);
   }
  }
  else
  {





   Assert(range_cmp_bounds(typcache, &lower,
         context.right_lower) >= 0);
   PLACE_RIGHT(range, i);
  }
 }




 if (common_entries_count > 0)
 {




  qsort(common_entries, common_entries_count, sizeof(CommonEntry),
     common_entry_cmp);




  for (i = 0; i < common_entries_count; i++)
  {
   int idx = common_entries[i].index;

   range = DatumGetRangeTypeP(entryvec->vector[idx].key);





   if (i < context.common_left)
    PLACE_LEFT(range, idx);
   else
    PLACE_RIGHT(range, idx);
  }
 }

 v->spl_ldatum = PointerGetDatum(left_range);
 v->spl_rdatum = PointerGetDatum(right_range);
}
