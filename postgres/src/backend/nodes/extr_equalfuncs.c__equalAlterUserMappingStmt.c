
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterUserMappingStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int options ;
 int servername ;
 int user ;

__attribute__((used)) static bool
_equalAlterUserMappingStmt(const AlterUserMappingStmt *a, const AlterUserMappingStmt *b)
{
 COMPARE_NODE_FIELD(user);
 COMPARE_STRING_FIELD(servername);
 COMPARE_NODE_FIELD(options);

 return 1;
}
