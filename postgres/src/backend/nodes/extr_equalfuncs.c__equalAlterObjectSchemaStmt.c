
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterObjectSchemaStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int missing_ok ;
 int newschema ;
 int object ;
 int objectType ;
 int relation ;

__attribute__((used)) static bool
_equalAlterObjectSchemaStmt(const AlterObjectSchemaStmt *a, const AlterObjectSchemaStmt *b)
{
 COMPARE_SCALAR_FIELD(objectType);
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(object);
 COMPARE_STRING_FIELD(newschema);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}
