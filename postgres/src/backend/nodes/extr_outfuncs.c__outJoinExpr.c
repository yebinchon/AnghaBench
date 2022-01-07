
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int JoinExpr ;


 int JoinType ;
 int WRITE_BOOL_FIELD (int ) ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int alias ;
 int isNatural ;
 int jointype ;
 int larg ;
 int quals ;
 int rarg ;
 int rtindex ;
 int usingClause ;

__attribute__((used)) static void
_outJoinExpr(StringInfo str, const JoinExpr *node)
{
 WRITE_NODE_TYPE("JOINEXPR");

 WRITE_ENUM_FIELD(jointype, JoinType);
 WRITE_BOOL_FIELD(isNatural);
 WRITE_NODE_FIELD(larg);
 WRITE_NODE_FIELD(rarg);
 WRITE_NODE_FIELD(usingClause);
 WRITE_NODE_FIELD(quals);
 WRITE_NODE_FIELD(alias);
 WRITE_INT_FIELD(rtindex);
}
