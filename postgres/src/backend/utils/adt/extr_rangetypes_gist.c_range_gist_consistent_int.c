
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef int StrategyNumber ;
typedef int RangeType ;
typedef int Datum ;


 int const* DatumGetRangeTypeP (int ) ;
 int ERROR ;
 int RangeIsEmpty (int const*) ;
 int RangeIsOrContainsEmpty (int const*) ;
 int elog (int ,char*,int) ;
 int range_adjacent_internal (int *,int const*,int const*) ;
 int range_after_internal (int *,int const*,int const*) ;
 int range_before_internal (int *,int const*,int const*) ;
 int range_contains_elem_internal (int *,int const*,int ) ;
 int range_contains_internal (int *,int const*,int const*) ;
 int range_overlaps_internal (int *,int const*,int const*) ;
 int range_overleft_internal (int *,int const*,int const*) ;
 int range_overright_internal (int *,int const*,int const*) ;

__attribute__((used)) static bool
range_gist_consistent_int(TypeCacheEntry *typcache, StrategyNumber strategy,
        const RangeType *key, Datum query)
{
 switch (strategy)
 {
  case 135:
   if (RangeIsEmpty(key) || RangeIsEmpty(DatumGetRangeTypeP(query)))
    return 0;
   return (!range_overright_internal(typcache, key,
             DatumGetRangeTypeP(query)));
  case 129:
   if (RangeIsEmpty(key) || RangeIsEmpty(DatumGetRangeTypeP(query)))
    return 0;
   return (!range_after_internal(typcache, key,
            DatumGetRangeTypeP(query)));
  case 130:
   return range_overlaps_internal(typcache, key,
             DatumGetRangeTypeP(query));
  case 128:
   if (RangeIsEmpty(key) || RangeIsEmpty(DatumGetRangeTypeP(query)))
    return 0;
   return (!range_before_internal(typcache, key,
             DatumGetRangeTypeP(query)));
  case 136:
   if (RangeIsEmpty(key) || RangeIsEmpty(DatumGetRangeTypeP(query)))
    return 0;
   return (!range_overleft_internal(typcache, key,
            DatumGetRangeTypeP(query)));
  case 137:
   if (RangeIsEmpty(key) || RangeIsEmpty(DatumGetRangeTypeP(query)))
    return 0;
   if (range_adjacent_internal(typcache, key,
          DatumGetRangeTypeP(query)))
    return 1;
   return range_overlaps_internal(typcache, key,
             DatumGetRangeTypeP(query));
  case 133:
   return range_contains_internal(typcache, key,
             DatumGetRangeTypeP(query));
  case 134:






   if (RangeIsOrContainsEmpty(key))
    return 1;
   return range_overlaps_internal(typcache, key,
             DatumGetRangeTypeP(query));
  case 132:
   return range_contains_elem_internal(typcache, key, query);
  case 131:





   if (RangeIsEmpty(DatumGetRangeTypeP(query)))
    return RangeIsOrContainsEmpty(key);
   return range_contains_internal(typcache, key,
             DatumGetRangeTypeP(query));
  default:
   elog(ERROR, "unrecognized range strategy: %d", strategy);
   return 0;
 }
}
