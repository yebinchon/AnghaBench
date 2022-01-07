
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int GroupingSetData ;


 int WRITE_FLOAT_FIELD (int ,char*) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int numGroups ;
 int set ;

__attribute__((used)) static void
_outGroupingSetData(StringInfo str, const GroupingSetData *node)
{
 WRITE_NODE_TYPE("GSDATA");

 WRITE_NODE_FIELD(set);
 WRITE_FLOAT_FIELD(numGroups, "%.0f");
}
