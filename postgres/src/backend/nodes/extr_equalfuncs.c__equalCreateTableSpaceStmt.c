
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateTableSpaceStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int location ;
 int options ;
 int owner ;
 int tablespacename ;

__attribute__((used)) static bool
_equalCreateTableSpaceStmt(const CreateTableSpaceStmt *a, const CreateTableSpaceStmt *b)
{
 COMPARE_STRING_FIELD(tablespacename);
 COMPARE_NODE_FIELD(owner);
 COMPARE_STRING_FIELD(location);
 COMPARE_NODE_FIELD(options);

 return 1;
}
