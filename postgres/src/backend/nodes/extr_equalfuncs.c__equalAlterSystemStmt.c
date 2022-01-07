
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterSystemStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int setstmt ;

__attribute__((used)) static bool
_equalAlterSystemStmt(const AlterSystemStmt *a, const AlterSystemStmt *b)
{
 COMPARE_NODE_FIELD(setstmt);

 return 1;
}
