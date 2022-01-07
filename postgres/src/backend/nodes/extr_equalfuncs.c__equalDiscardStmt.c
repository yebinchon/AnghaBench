
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DiscardStmt ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int target ;

__attribute__((used)) static bool
_equalDiscardStmt(const DiscardStmt *a, const DiscardStmt *b)
{
 COMPARE_SCALAR_FIELD(target);

 return 1;
}
