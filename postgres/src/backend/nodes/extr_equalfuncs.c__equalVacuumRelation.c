
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VacuumRelation ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int oid ;
 int relation ;
 int va_cols ;

__attribute__((used)) static bool
_equalVacuumRelation(const VacuumRelation *a, const VacuumRelation *b)
{
 COMPARE_NODE_FIELD(relation);
 COMPARE_SCALAR_FIELD(oid);
 COMPARE_NODE_FIELD(va_cols);

 return 1;
}
