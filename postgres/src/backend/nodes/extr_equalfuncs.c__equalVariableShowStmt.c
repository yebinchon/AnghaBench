
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VariableShowStmt ;


 int COMPARE_STRING_FIELD (int ) ;
 int name ;

__attribute__((used)) static bool
_equalVariableShowStmt(const VariableShowStmt *a, const VariableShowStmt *b)
{
 COMPARE_STRING_FIELD(name);

 return 1;
}
