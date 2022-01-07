
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CaseTestExpr ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int collation ;
 int typeId ;
 int typeMod ;

__attribute__((used)) static bool
_equalCaseTestExpr(const CaseTestExpr *a, const CaseTestExpr *b)
{
 COMPARE_SCALAR_FIELD(typeId);
 COMPARE_SCALAR_FIELD(typeMod);
 COMPARE_SCALAR_FIELD(collation);

 return 1;
}
