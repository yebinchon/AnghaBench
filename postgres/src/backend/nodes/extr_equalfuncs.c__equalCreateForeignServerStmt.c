
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateForeignServerStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int fdwname ;
 int if_not_exists ;
 int options ;
 int servername ;
 int servertype ;
 int version ;

__attribute__((used)) static bool
_equalCreateForeignServerStmt(const CreateForeignServerStmt *a, const CreateForeignServerStmt *b)
{
 COMPARE_STRING_FIELD(servername);
 COMPARE_STRING_FIELD(servertype);
 COMPARE_STRING_FIELD(version);
 COMPARE_STRING_FIELD(fdwname);
 COMPARE_SCALAR_FIELD(if_not_exists);
 COMPARE_NODE_FIELD(options);

 return 1;
}
