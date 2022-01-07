
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterOperatorStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int opername ;
 int options ;

__attribute__((used)) static bool
_equalAlterOperatorStmt(const AlterOperatorStmt *a, const AlterOperatorStmt *b)
{
 COMPARE_NODE_FIELD(opername);
 COMPARE_NODE_FIELD(options);

 return 1;
}
