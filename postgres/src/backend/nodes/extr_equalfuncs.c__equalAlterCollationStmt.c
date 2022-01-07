
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterCollationStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int collname ;

__attribute__((used)) static bool
_equalAlterCollationStmt(const AlterCollationStmt *a, const AlterCollationStmt *b)
{
 COMPARE_NODE_FIELD(collname);

 return 1;
}
