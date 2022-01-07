
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Var ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int location ;
 int varattno ;
 int varcollid ;
 int varlevelsup ;
 int varno ;
 int varnoold ;
 int varoattno ;
 int vartype ;
 int vartypmod ;

__attribute__((used)) static bool
_equalVar(const Var *a, const Var *b)
{
 COMPARE_SCALAR_FIELD(varno);
 COMPARE_SCALAR_FIELD(varattno);
 COMPARE_SCALAR_FIELD(vartype);
 COMPARE_SCALAR_FIELD(vartypmod);
 COMPARE_SCALAR_FIELD(varcollid);
 COMPARE_SCALAR_FIELD(varlevelsup);
 COMPARE_SCALAR_FIELD(varnoold);
 COMPARE_SCALAR_FIELD(varoattno);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
