
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TypeCacheEntry ;
struct TYPE_4__ {int infinite; int inclusive; int lower; void* val; } ;
typedef int RangeType ;
typedef TYPE_1__ RangeBound ;
typedef void* Datum ;


 int * make_range (int *,TYPE_1__*,TYPE_1__*,int) ;

RangeType *
make_empty_range(TypeCacheEntry *typcache)
{
 RangeBound lower;
 RangeBound upper;

 lower.val = (Datum) 0;
 lower.infinite = 0;
 lower.inclusive = 0;
 lower.lower = 1;

 upper.val = (Datum) 0;
 upper.infinite = 0;
 upper.inclusive = 0;
 upper.lower = 0;

 return make_range(typcache, &lower, &upper, 1);
}
