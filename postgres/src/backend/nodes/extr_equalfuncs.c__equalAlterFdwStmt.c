
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterFdwStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int fdwname ;
 int func_options ;
 int options ;

__attribute__((used)) static bool
_equalAlterFdwStmt(const AlterFdwStmt *a, const AlterFdwStmt *b)
{
 COMPARE_STRING_FIELD(fdwname);
 COMPARE_NODE_FIELD(func_options);
 COMPARE_NODE_FIELD(options);

 return 1;
}
