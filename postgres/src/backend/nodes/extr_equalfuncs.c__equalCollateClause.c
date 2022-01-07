
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CollateClause ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int arg ;
 int collname ;
 int location ;

__attribute__((used)) static bool
_equalCollateClause(const CollateClause *a, const CollateClause *b)
{
 COMPARE_NODE_FIELD(arg);
 COMPARE_NODE_FIELD(collname);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
