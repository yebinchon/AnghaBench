
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int A_ArrayExpr ;


 int WRITE_LOCATION_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int elements ;
 int location ;

__attribute__((used)) static void
_outA_ArrayExpr(StringInfo str, const A_ArrayExpr *node)
{
 WRITE_NODE_TYPE("A_ARRAYEXPR");

 WRITE_NODE_FIELD(elements);
 WRITE_LOCATION_FIELD(location);
}
