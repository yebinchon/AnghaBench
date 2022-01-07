
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TargetEntry ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int expr ;
 int resjunk ;
 int resname ;
 int resno ;
 int resorigcol ;
 int resorigtbl ;
 int ressortgroupref ;

__attribute__((used)) static bool
_equalTargetEntry(const TargetEntry *a, const TargetEntry *b)
{
 COMPARE_NODE_FIELD(expr);
 COMPARE_SCALAR_FIELD(resno);
 COMPARE_STRING_FIELD(resname);
 COMPARE_SCALAR_FIELD(ressortgroupref);
 COMPARE_SCALAR_FIELD(resorigtbl);
 COMPARE_SCALAR_FIELD(resorigcol);
 COMPARE_SCALAR_FIELD(resjunk);

 return 1;
}
