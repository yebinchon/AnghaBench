
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int GroupingFunc ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_UINT_FIELD (int ) ;
 int agglevelsup ;
 int args ;
 int cols ;
 int location ;
 int refs ;

__attribute__((used)) static void
_outGroupingFunc(StringInfo str, const GroupingFunc *node)
{
 WRITE_NODE_TYPE("GROUPINGFUNC");

 WRITE_NODE_FIELD(args);
 WRITE_NODE_FIELD(refs);
 WRITE_NODE_FIELD(cols);
 WRITE_UINT_FIELD(agglevelsup);
 WRITE_LOCATION_FIELD(location);
}
