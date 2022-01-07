
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterOwnerStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int newowner ;
 int object ;
 int objectType ;
 int relation ;

__attribute__((used)) static bool
_equalAlterOwnerStmt(const AlterOwnerStmt *a, const AlterOwnerStmt *b)
{
 COMPARE_SCALAR_FIELD(objectType);
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(object);
 COMPARE_NODE_FIELD(newowner);

 return 1;
}
