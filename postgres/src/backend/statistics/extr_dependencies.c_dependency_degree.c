
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tupDesc; int attrcollid; int attrtypid; } ;
typedef TYPE_1__ VacAttrStats ;
struct TYPE_6__ {scalar_t__ lt_opr; } ;
typedef TYPE_2__ TypeCacheEntry ;
typedef size_t SortItem ;
typedef size_t* MultiSortSupport ;
typedef int HeapTuple ;
typedef int Bitmapset ;
typedef size_t AttrNumber ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 int TYPECACHE_LT_OPR ;
 size_t* build_attnums_array (int *,int*) ;
 size_t* build_sorted_items (int,int*,int *,int ,size_t*,int,size_t*) ;
 int elog (int ,char*,int ) ;
 TYPE_2__* lookup_type_cache (int ,int ) ;
 int multi_sort_add_dimension (size_t*,int,scalar_t__,int ) ;
 scalar_t__ multi_sort_compare_dim (int,size_t*,size_t*,size_t*) ;
 scalar_t__ multi_sort_compare_dims (int ,int,size_t*,size_t*,size_t*) ;
 size_t* multi_sort_init (int) ;
 scalar_t__ palloc (int) ;
 int pfree (size_t*) ;

__attribute__((used)) static double
dependency_degree(int numrows, HeapTuple *rows, int k, AttrNumber *dependency,
      VacAttrStats **stats, Bitmapset *attrs)
{
 int i,
    nitems;
 MultiSortSupport mss;
 SortItem *items;
 AttrNumber *attnums;
 AttrNumber *attnums_dep;
 int numattrs;


 int group_size = 0;
 int n_violations = 0;


 int n_supporting_rows = 0;


 Assert(k >= 2);


 mss = multi_sort_init(k);






 attnums = build_attnums_array(attrs, &numattrs);

 attnums_dep = (AttrNumber *) palloc(k * sizeof(AttrNumber));
 for (i = 0; i < k; i++)
  attnums_dep[i] = attnums[dependency[i]];
 for (i = 0; i < k; i++)
 {
  VacAttrStats *colstat = stats[dependency[i]];
  TypeCacheEntry *type;

  type = lookup_type_cache(colstat->attrtypid, TYPECACHE_LT_OPR);
  if (type->lt_opr == InvalidOid)
   elog(ERROR, "cache lookup failed for ordering operator for type %u",
     colstat->attrtypid);


  multi_sort_add_dimension(mss, i, type->lt_opr, colstat->attrcollid);
 }
 items = build_sorted_items(numrows, &nitems, rows, stats[0]->tupDesc,
          mss, k, attnums_dep);
 group_size = 1;


 for (i = 1; i <= nitems; i++)
 {





  if (i == nitems ||
   multi_sort_compare_dims(0, k - 2, &items[i - 1], &items[i], mss) != 0)
  {




   if (n_violations == 0)
    n_supporting_rows += group_size;


   n_violations = 0;
   group_size = 1;
   continue;
  }

  else if (multi_sort_compare_dim(k - 1, &items[i - 1], &items[i], mss) != 0)
   n_violations++;

  group_size++;
 }

 if (items)
  pfree(items);

 pfree(mss);
 pfree(attnums);
 pfree(attnums_dep);


 return (n_supporting_rows * 1.0 / numrows);
}
