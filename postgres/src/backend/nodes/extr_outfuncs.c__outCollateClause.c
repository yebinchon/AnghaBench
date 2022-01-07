
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int CollateClause ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int arg ;
 int collname ;
 int location ;

__attribute__((used)) static void
_outCollateClause(StringInfo str, const CollateClause *node)
{
 WRITE_NODE_TYPE("COLLATECLAUSE");

 WRITE_NODE_FIELD(arg);
 WRITE_NODE_FIELD(collname);
 WRITE_LOCATION_FIELD(location);
}
