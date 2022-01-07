
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JoinExpr ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int alias ;
 int isNatural ;
 int jointype ;
 int larg ;
 int quals ;
 int rarg ;
 int rtindex ;
 int usingClause ;

__attribute__((used)) static bool
_equalJoinExpr(const JoinExpr *a, const JoinExpr *b)
{
 COMPARE_SCALAR_FIELD(jointype);
 COMPARE_SCALAR_FIELD(isNatural);
 COMPARE_NODE_FIELD(larg);
 COMPARE_NODE_FIELD(rarg);
 COMPARE_NODE_FIELD(usingClause);
 COMPARE_NODE_FIELD(quals);
 COMPARE_NODE_FIELD(alias);
 COMPARE_SCALAR_FIELD(rtindex);

 return 1;
}
