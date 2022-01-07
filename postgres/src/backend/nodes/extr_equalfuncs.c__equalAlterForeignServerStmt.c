
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterForeignServerStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int has_version ;
 int options ;
 int servername ;
 int version ;

__attribute__((used)) static bool
_equalAlterForeignServerStmt(const AlterForeignServerStmt *a, const AlterForeignServerStmt *b)
{
 COMPARE_STRING_FIELD(servername);
 COMPARE_STRING_FIELD(version);
 COMPARE_NODE_FIELD(options);
 COMPARE_SCALAR_FIELD(has_version);

 return 1;
}
