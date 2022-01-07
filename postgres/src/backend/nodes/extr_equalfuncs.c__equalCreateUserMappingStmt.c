
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateUserMappingStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int if_not_exists ;
 int options ;
 int servername ;
 int user ;

__attribute__((used)) static bool
_equalCreateUserMappingStmt(const CreateUserMappingStmt *a, const CreateUserMappingStmt *b)
{
 COMPARE_NODE_FIELD(user);
 COMPARE_STRING_FIELD(servername);
 COMPARE_SCALAR_FIELD(if_not_exists);
 COMPARE_NODE_FIELD(options);

 return 1;
}
