
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int TypeCacheEntry ;
struct TYPE_2__ {int bound; } ;
typedef TYPE_1__ SingleBoundSortItem ;


 int range_cmp_bounds (int *,int *,int *) ;

__attribute__((used)) static int
single_bound_cmp(const void *a, const void *b, void *arg)
{
 SingleBoundSortItem *i1 = (SingleBoundSortItem *) a;
 SingleBoundSortItem *i2 = (SingleBoundSortItem *) b;
 TypeCacheEntry *typcache = (TypeCacheEntry *) arg;

 return range_cmp_bounds(typcache, &i1->bound, &i2->bound);
}
