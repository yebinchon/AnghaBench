
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SortBy ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int location ;
 int node ;
 int sortby_dir ;
 int sortby_nulls ;
 int useOp ;

__attribute__((used)) static bool
_equalSortBy(const SortBy *a, const SortBy *b)
{
 COMPARE_NODE_FIELD(node);
 COMPARE_SCALAR_FIELD(sortby_dir);
 COMPARE_SCALAR_FIELD(sortby_nulls);
 COMPARE_NODE_FIELD(useOp);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
