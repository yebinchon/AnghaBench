
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WithClause ;
typedef int StringInfo ;


 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int ctes ;
 int location ;
 int recursive ;

__attribute__((used)) static void
_outWithClause(StringInfo str, const WithClause *node)
{
 WRITE_NODE_TYPE("WITHCLAUSE");

 WRITE_NODE_FIELD(ctes);
 WRITE_BOOL_FIELD(recursive);
 WRITE_LOCATION_FIELD(location);
}
