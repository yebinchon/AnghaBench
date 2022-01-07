
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateEnumStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int typeName ;
 int vals ;

__attribute__((used)) static bool
_equalCreateEnumStmt(const CreateEnumStmt *a, const CreateEnumStmt *b)
{
 COMPARE_NODE_FIELD(typeName);
 COMPARE_NODE_FIELD(vals);

 return 1;
}
