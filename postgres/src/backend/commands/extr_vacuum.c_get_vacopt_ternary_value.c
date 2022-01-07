
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VacOptTernaryValue ;
typedef int DefElem ;


 int VACOPT_TERNARY_DISABLED ;
 int VACOPT_TERNARY_ENABLED ;
 scalar_t__ defGetBoolean (int *) ;

__attribute__((used)) static VacOptTernaryValue
get_vacopt_ternary_value(DefElem *def)
{
 return defGetBoolean(def) ? VACOPT_TERNARY_ENABLED : VACOPT_TERNARY_DISABLED;
}
