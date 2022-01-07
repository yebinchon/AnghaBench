
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int FromExpr ;


 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int fromlist ;
 int quals ;

__attribute__((used)) static void
_outFromExpr(StringInfo str, const FromExpr *node)
{
 WRITE_NODE_TYPE("FROMEXPR");

 WRITE_NODE_FIELD(fromlist);
 WRITE_NODE_FIELD(quals);
}
