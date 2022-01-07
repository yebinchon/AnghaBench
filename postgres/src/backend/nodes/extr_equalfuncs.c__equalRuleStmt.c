
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RuleStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int actions ;
 int event ;
 int instead ;
 int relation ;
 int replace ;
 int rulename ;
 int whereClause ;

__attribute__((used)) static bool
_equalRuleStmt(const RuleStmt *a, const RuleStmt *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_STRING_FIELD(rulename);
 COMPARE_NODE_FIELD(whereClause);
 COMPARE_SCALAR_FIELD(event);
 COMPARE_SCALAR_FIELD(instead);
 COMPARE_NODE_FIELD(actions);
 COMPARE_SCALAR_FIELD(replace);

 return 1;
}
