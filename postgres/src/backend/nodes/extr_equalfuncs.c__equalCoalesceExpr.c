
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CoalesceExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int args ;
 int coalescecollid ;
 int coalescetype ;
 int location ;

__attribute__((used)) static bool
_equalCoalesceExpr(const CoalesceExpr *a, const CoalesceExpr *b)
{
 COMPARE_SCALAR_FIELD(coalescetype);
 COMPARE_SCALAR_FIELD(coalescecollid);
 COMPARE_NODE_FIELD(args);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
