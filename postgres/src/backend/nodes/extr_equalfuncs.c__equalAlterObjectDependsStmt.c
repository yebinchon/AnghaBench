
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterObjectDependsStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int extname ;
 int object ;
 int objectType ;
 int relation ;

__attribute__((used)) static bool
_equalAlterObjectDependsStmt(const AlterObjectDependsStmt *a, const AlterObjectDependsStmt *b)
{
 COMPARE_SCALAR_FIELD(objectType);
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(object);
 COMPARE_NODE_FIELD(extname);

 return 1;
}
