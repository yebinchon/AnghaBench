
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef int RangeType ;
typedef int RangeBound ;


 int ERROR ;
 scalar_t__ RangeTypeGetOid (int const*) ;
 int elog (int ,char*) ;
 scalar_t__ range_cmp_bounds (int *,int *,int *) ;
 int range_deserialize (int *,int const*,int *,int *,int*) ;

bool
range_overleft_internal(TypeCacheEntry *typcache, const RangeType *r1, const RangeType *r2)
{
 RangeBound lower1,
    lower2;
 RangeBound upper1,
    upper2;
 bool empty1,
    empty2;


 if (RangeTypeGetOid(r1) != RangeTypeGetOid(r2))
  elog(ERROR, "range types do not match");

 range_deserialize(typcache, r1, &lower1, &upper1, &empty1);
 range_deserialize(typcache, r2, &lower2, &upper2, &empty2);


 if (empty1 || empty2)
  return 0;

 if (range_cmp_bounds(typcache, &upper1, &upper2) <= 0)
  return 1;

 return 0;
}
