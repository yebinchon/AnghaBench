
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int SortBy ;


 int SortByDir ;
 int SortByNulls ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int const*) ;
 int WRITE_NODE_TYPE (char*) ;
 int location ;
 int sortby_dir ;
 int sortby_nulls ;
 int const* useOp ;

__attribute__((used)) static void
_outSortBy(StringInfo str, const SortBy *node)
{
 WRITE_NODE_TYPE("SORTBY");

 WRITE_NODE_FIELD(node);
 WRITE_ENUM_FIELD(sortby_dir, SortByDir);
 WRITE_ENUM_FIELD(sortby_nulls, SortByNulls);
 WRITE_NODE_FIELD(useOp);
 WRITE_LOCATION_FIELD(location);
}
