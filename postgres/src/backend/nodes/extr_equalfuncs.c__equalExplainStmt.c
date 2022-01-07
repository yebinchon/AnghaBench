
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExplainStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int options ;
 int query ;

__attribute__((used)) static bool
_equalExplainStmt(const ExplainStmt *a, const ExplainStmt *b)
{
 COMPARE_NODE_FIELD(query);
 COMPARE_NODE_FIELD(options);

 return 1;
}
