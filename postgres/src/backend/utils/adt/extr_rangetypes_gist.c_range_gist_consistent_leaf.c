
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef int StrategyNumber ;
typedef int RangeType ;
typedef int Datum ;


 int DatumGetRangeTypeP (int ) ;
 int ERROR ;
 int elog (int ,char*,int) ;
 int range_adjacent_internal (int *,int const*,int ) ;
 int range_after_internal (int *,int const*,int ) ;
 int range_before_internal (int *,int const*,int ) ;
 int range_contained_by_internal (int *,int const*,int ) ;
 int range_contains_elem_internal (int *,int const*,int ) ;
 int range_contains_internal (int *,int const*,int ) ;
 int range_eq_internal (int *,int const*,int ) ;
 int range_overlaps_internal (int *,int const*,int ) ;
 int range_overleft_internal (int *,int const*,int ) ;
 int range_overright_internal (int *,int const*,int ) ;

__attribute__((used)) static bool
range_gist_consistent_leaf(TypeCacheEntry *typcache, StrategyNumber strategy,
         const RangeType *key, Datum query)
{
 switch (strategy)
 {
  case 135:
   return range_before_internal(typcache, key,
           DatumGetRangeTypeP(query));
  case 129:
   return range_overleft_internal(typcache, key,
             DatumGetRangeTypeP(query));
  case 130:
   return range_overlaps_internal(typcache, key,
             DatumGetRangeTypeP(query));
  case 128:
   return range_overright_internal(typcache, key,
           DatumGetRangeTypeP(query));
  case 136:
   return range_after_internal(typcache, key,
          DatumGetRangeTypeP(query));
  case 137:
   return range_adjacent_internal(typcache, key,
             DatumGetRangeTypeP(query));
  case 133:
   return range_contains_internal(typcache, key,
             DatumGetRangeTypeP(query));
  case 134:
   return range_contained_by_internal(typcache, key,
              DatumGetRangeTypeP(query));
  case 132:
   return range_contains_elem_internal(typcache, key, query);
  case 131:
   return range_eq_internal(typcache, key, DatumGetRangeTypeP(query));
  default:
   elog(ERROR, "unrecognized range strategy: %d", strategy);
   return 0;
 }
}
