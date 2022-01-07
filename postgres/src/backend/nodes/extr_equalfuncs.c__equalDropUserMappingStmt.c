
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DropUserMappingStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int missing_ok ;
 int servername ;
 int user ;

__attribute__((used)) static bool
_equalDropUserMappingStmt(const DropUserMappingStmt *a, const DropUserMappingStmt *b)
{
 COMPARE_NODE_FIELD(user);
 COMPARE_STRING_FIELD(servername);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}
