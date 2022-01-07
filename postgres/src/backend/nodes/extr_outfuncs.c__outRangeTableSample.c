
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int RangeTableSample ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int args ;
 int location ;
 int method ;
 int relation ;
 int repeatable ;

__attribute__((used)) static void
_outRangeTableSample(StringInfo str, const RangeTableSample *node)
{
 WRITE_NODE_TYPE("RANGETABLESAMPLE");

 WRITE_NODE_FIELD(relation);
 WRITE_NODE_FIELD(method);
 WRITE_NODE_FIELD(args);
 WRITE_NODE_FIELD(repeatable);
 WRITE_LOCATION_FIELD(location);
}
