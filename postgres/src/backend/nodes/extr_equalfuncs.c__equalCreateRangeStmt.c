
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateRangeStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int params ;
 int typeName ;

__attribute__((used)) static bool
_equalCreateRangeStmt(const CreateRangeStmt *a, const CreateRangeStmt *b)
{
 COMPARE_NODE_FIELD(typeName);
 COMPARE_NODE_FIELD(params);

 return 1;
}
