
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CollateExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arg ;
 int collOid ;
 int location ;

__attribute__((used)) static bool
_equalCollateExpr(const CollateExpr *a, const CollateExpr *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_SCALAR_FIELD(collOid);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
