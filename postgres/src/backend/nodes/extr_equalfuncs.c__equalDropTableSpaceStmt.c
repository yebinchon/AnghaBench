
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DropTableSpaceStmt ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int missing_ok ;
 int tablespacename ;

__attribute__((used)) static bool
_equalDropTableSpaceStmt(const DropTableSpaceStmt *a, const DropTableSpaceStmt *b)
{
 COMPARE_STRING_FIELD(tablespacename);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}
