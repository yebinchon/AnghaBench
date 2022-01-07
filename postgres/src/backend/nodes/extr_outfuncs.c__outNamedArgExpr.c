
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int NamedArgExpr ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int arg ;
 int argnumber ;
 int location ;
 int name ;

__attribute__((used)) static void
_outNamedArgExpr(StringInfo str, const NamedArgExpr *node)
{
 WRITE_NODE_TYPE("NAMEDARGEXPR");

 WRITE_NODE_FIELD(arg);
 WRITE_STRING_FIELD(name);
 WRITE_INT_FIELD(argnumber);
 WRITE_LOCATION_FIELD(location);
}
