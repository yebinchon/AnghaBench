
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DeallocateStmt ;


 int COMPARE_STRING_FIELD (int ) ;
 int name ;

__attribute__((used)) static bool
_equalDeallocateStmt(const DeallocateStmt *a, const DeallocateStmt *b)
{
 COMPARE_STRING_FIELD(name);

 return 1;
}
