
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeCacheEntry ;
typedef int RangeType ;
typedef int RangeBound ;


 int DatumGetBool (int ) ;
 int ERRCODE_DATA_EXCEPTION ;
 int ERROR ;
 scalar_t__ RangeTypeGetOid (int *) ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int * make_range (int *,int *,int *,int) ;
 int range_adjacent_internal (int *,int *,int *) ;
 scalar_t__ range_cmp_bounds (int *,int *,int *) ;
 int range_deserialize (int *,int *,int *,int *,int*) ;
 int range_overlaps_internal (int *,int *,int *) ;

__attribute__((used)) static RangeType *
range_union_internal(TypeCacheEntry *typcache, RangeType *r1, RangeType *r2,
      bool strict)
{
 RangeBound lower1,
    lower2;
 RangeBound upper1,
    upper2;
 bool empty1,
    empty2;
 RangeBound *result_lower;
 RangeBound *result_upper;


 if (RangeTypeGetOid(r1) != RangeTypeGetOid(r2))
  elog(ERROR, "range types do not match");

 range_deserialize(typcache, r1, &lower1, &upper1, &empty1);
 range_deserialize(typcache, r2, &lower2, &upper2, &empty2);


 if (empty1)
  return r2;
 if (empty2)
  return r1;

 if (strict &&
  !DatumGetBool(range_overlaps_internal(typcache, r1, r2)) &&
  !DatumGetBool(range_adjacent_internal(typcache, r1, r2)))
  ereport(ERROR,
    (errcode(ERRCODE_DATA_EXCEPTION),
     errmsg("result of range union would not be contiguous")));

 if (range_cmp_bounds(typcache, &lower1, &lower2) < 0)
  result_lower = &lower1;
 else
  result_lower = &lower2;

 if (range_cmp_bounds(typcache, &upper1, &upper2) > 0)
  result_upper = &upper1;
 else
  result_upper = &upper2;

 return make_range(typcache, result_lower, result_upper, 0);
}
