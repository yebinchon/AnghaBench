
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterDatabaseSetStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int dbname ;
 int setstmt ;

__attribute__((used)) static bool
_equalAlterDatabaseSetStmt(const AlterDatabaseSetStmt *a, const AlterDatabaseSetStmt *b)
{
 COMPARE_STRING_FIELD(dbname);
 COMPARE_NODE_FIELD(setstmt);

 return 1;
}
