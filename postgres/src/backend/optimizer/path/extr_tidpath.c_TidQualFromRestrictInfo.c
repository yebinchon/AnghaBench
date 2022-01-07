
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pseudoconstant; } ;
typedef TYPE_1__ RestrictInfo ;
typedef int RelOptInfo ;
typedef int List ;


 scalar_t__ IsCurrentOfClause (TYPE_1__*,int *) ;
 scalar_t__ IsTidEqualAnyClause (TYPE_1__*,int *) ;
 scalar_t__ IsTidEqualClause (TYPE_1__*,int *) ;
 int * NIL ;
 int * list_make1 (TYPE_1__*) ;
 int restriction_is_securely_promotable (TYPE_1__*,int *) ;

__attribute__((used)) static List *
TidQualFromRestrictInfo(RestrictInfo *rinfo, RelOptInfo *rel)
{




 if (rinfo->pseudoconstant)
  return NIL;





 if (!restriction_is_securely_promotable(rinfo, rel))
  return NIL;




 if (IsTidEqualClause(rinfo, rel) ||
  IsTidEqualAnyClause(rinfo, rel) ||
  IsCurrentOfClause(rinfo, rel))
  return list_make1(rinfo);

 return NIL;
}
