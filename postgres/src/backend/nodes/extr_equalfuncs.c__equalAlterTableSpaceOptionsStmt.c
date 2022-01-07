
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterTableSpaceOptionsStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int isReset ;
 int options ;
 int tablespacename ;

__attribute__((used)) static bool
_equalAlterTableSpaceOptionsStmt(const AlterTableSpaceOptionsStmt *a,
         const AlterTableSpaceOptionsStmt *b)
{
 COMPARE_STRING_FIELD(tablespacename);
 COMPARE_NODE_FIELD(options);
 COMPARE_SCALAR_FIELD(isReset);

 return 1;
}
