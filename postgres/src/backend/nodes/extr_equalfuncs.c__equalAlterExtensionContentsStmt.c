
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterExtensionContentsStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int action ;
 int extname ;
 int object ;
 int objtype ;

__attribute__((used)) static bool
_equalAlterExtensionContentsStmt(const AlterExtensionContentsStmt *a, const AlterExtensionContentsStmt *b)
{
 COMPARE_STRING_FIELD(extname);
 COMPARE_SCALAR_FIELD(action);
 COMPARE_SCALAR_FIELD(objtype);
 COMPARE_NODE_FIELD(object);

 return 1;
}
