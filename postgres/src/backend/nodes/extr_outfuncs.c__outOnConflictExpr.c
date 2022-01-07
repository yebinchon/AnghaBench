
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int OnConflictExpr ;


 int OnConflictAction ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int action ;
 int arbiterElems ;
 int arbiterWhere ;
 int constraint ;
 int exclRelIndex ;
 int exclRelTlist ;
 int onConflictSet ;
 int onConflictWhere ;

__attribute__((used)) static void
_outOnConflictExpr(StringInfo str, const OnConflictExpr *node)
{
 WRITE_NODE_TYPE("ONCONFLICTEXPR");

 WRITE_ENUM_FIELD(action, OnConflictAction);
 WRITE_NODE_FIELD(arbiterElems);
 WRITE_NODE_FIELD(arbiterWhere);
 WRITE_OID_FIELD(constraint);
 WRITE_NODE_FIELD(onConflictSet);
 WRITE_NODE_FIELD(onConflictWhere);
 WRITE_INT_FIELD(exclRelIndex);
 WRITE_NODE_FIELD(exclRelTlist);
}
