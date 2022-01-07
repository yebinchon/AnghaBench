
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TypeCacheEntry ;
struct TYPE_2__ {int lower; } ;
typedef TYPE_1__ NonEmptyRange ;


 int range_cmp_bounds (int *,int *,int *) ;

__attribute__((used)) static int
interval_cmp_lower(const void *a, const void *b, void *arg)
{
 NonEmptyRange *i1 = (NonEmptyRange *) a;
 NonEmptyRange *i2 = (NonEmptyRange *) b;
 TypeCacheEntry *typcache = (TypeCacheEntry *) arg;

 return range_cmp_bounds(typcache, &i1->lower, &i2->lower);
}
