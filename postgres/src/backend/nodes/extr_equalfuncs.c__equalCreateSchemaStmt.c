
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateSchemaStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int authrole ;
 int if_not_exists ;
 int schemaElts ;
 int schemaname ;

__attribute__((used)) static bool
_equalCreateSchemaStmt(const CreateSchemaStmt *a, const CreateSchemaStmt *b)
{
 COMPARE_STRING_FIELD(schemaname);
 COMPARE_NODE_FIELD(authrole);
 COMPARE_NODE_FIELD(schemaElts);
 COMPARE_SCALAR_FIELD(if_not_exists);

 return 1;
}
