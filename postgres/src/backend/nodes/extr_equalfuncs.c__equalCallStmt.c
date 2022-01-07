
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CallStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int funccall ;
 int funcexpr ;

__attribute__((used)) static bool
_equalCallStmt(const CallStmt *a, const CallStmt *b)
{
 COMPARE_NODE_FIELD(funccall);
 COMPARE_NODE_FIELD(funcexpr);

 return 1;
}
