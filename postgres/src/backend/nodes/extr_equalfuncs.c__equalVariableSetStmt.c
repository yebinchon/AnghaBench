
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VariableSetStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int args ;
 int is_local ;
 int kind ;
 int name ;

__attribute__((used)) static bool
_equalVariableSetStmt(const VariableSetStmt *a, const VariableSetStmt *b)
{
 COMPARE_SCALAR_FIELD(kind);
 COMPARE_STRING_FIELD(name);
 COMPARE_NODE_FIELD(args);
 COMPARE_SCALAR_FIELD(is_local);

 return 1;
}
