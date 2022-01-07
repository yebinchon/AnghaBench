
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterEnumStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int newVal ;
 int newValIsAfter ;
 int newValNeighbor ;
 int oldVal ;
 int skipIfNewValExists ;
 int typeName ;

__attribute__((used)) static bool
_equalAlterEnumStmt(const AlterEnumStmt *a, const AlterEnumStmt *b)
{
 COMPARE_NODE_FIELD(typeName);
 COMPARE_STRING_FIELD(oldVal);
 COMPARE_STRING_FIELD(newVal);
 COMPARE_STRING_FIELD(newValNeighbor);
 COMPARE_SCALAR_FIELD(newValIsAfter);
 COMPARE_SCALAR_FIELD(skipIfNewValExists);

 return 1;
}
