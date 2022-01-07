
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ opfuncid; } ;
typedef TYPE_1__ ScalarArrayOpExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int args ;
 int inputcollid ;
 int location ;
 int opno ;
 int useOr ;

__attribute__((used)) static bool
_equalScalarArrayOpExpr(const ScalarArrayOpExpr *a, const ScalarArrayOpExpr *b)
{
 COMPARE_SCALAR_FIELD(opno);







 if (a->opfuncid != b->opfuncid &&
  a->opfuncid != 0 &&
  b->opfuncid != 0)
  return 0;

 COMPARE_SCALAR_FIELD(useOr);
 COMPARE_SCALAR_FIELD(inputcollid);
 COMPARE_NODE_FIELD(args);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
