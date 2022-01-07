
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int GroupingSet ;


 int GroupingSetKind ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int content ;
 int kind ;
 int location ;

__attribute__((used)) static void
_outGroupingSet(StringInfo str, const GroupingSet *node)
{
 WRITE_NODE_TYPE("GROUPINGSET");

 WRITE_ENUM_FIELD(kind, GroupingSetKind);
 WRITE_NODE_FIELD(content);
 WRITE_LOCATION_FIELD(location);
}
