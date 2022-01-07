
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OnConflictClause ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int action ;
 int infer ;
 int location ;
 int targetList ;
 int whereClause ;

__attribute__((used)) static bool
_equalOnConflictClause(const OnConflictClause *a, const OnConflictClause *b)
{
 COMPARE_SCALAR_FIELD(action);
 COMPARE_NODE_FIELD(infer);
 COMPARE_NODE_FIELD(targetList);
 COMPARE_NODE_FIELD(whereClause);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
