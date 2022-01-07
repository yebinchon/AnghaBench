
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterDatabaseStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int dbname ;
 int options ;

__attribute__((used)) static bool
_equalAlterDatabaseStmt(const AlterDatabaseStmt *a, const AlterDatabaseStmt *b)
{
 COMPARE_STRING_FIELD(dbname);
 COMPARE_NODE_FIELD(options);

 return 1;
}
