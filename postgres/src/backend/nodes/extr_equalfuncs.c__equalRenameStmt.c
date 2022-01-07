
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RenameStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int behavior ;
 int missing_ok ;
 int newname ;
 int object ;
 int relation ;
 int relationType ;
 int renameType ;
 int subname ;

__attribute__((used)) static bool
_equalRenameStmt(const RenameStmt *a, const RenameStmt *b)
{
 COMPARE_SCALAR_FIELD(renameType);
 COMPARE_SCALAR_FIELD(relationType);
 COMPARE_NODE_FIELD(relation);
 COMPARE_NODE_FIELD(object);
 COMPARE_STRING_FIELD(subname);
 COMPARE_STRING_FIELD(newname);
 COMPARE_SCALAR_FIELD(behavior);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}
