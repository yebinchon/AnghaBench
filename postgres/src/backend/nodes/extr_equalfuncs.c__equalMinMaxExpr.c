
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MinMaxExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int args ;
 int inputcollid ;
 int location ;
 int minmaxcollid ;
 int minmaxtype ;
 int op ;

__attribute__((used)) static bool
_equalMinMaxExpr(const MinMaxExpr *a, const MinMaxExpr *b)
{
 COMPARE_SCALAR_FIELD(minmaxtype);
 COMPARE_SCALAR_FIELD(minmaxcollid);
 COMPARE_SCALAR_FIELD(inputcollid);
 COMPARE_SCALAR_FIELD(op);
 COMPARE_NODE_FIELD(args);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
