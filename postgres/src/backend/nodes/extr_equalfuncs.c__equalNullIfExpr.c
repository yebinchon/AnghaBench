
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ opfuncid; } ;
typedef TYPE_1__ NullIfExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int args ;
 int inputcollid ;
 int location ;
 int opcollid ;
 int opno ;
 int opresulttype ;
 int opretset ;

__attribute__((used)) static bool
_equalNullIfExpr(const NullIfExpr *a, const NullIfExpr *b)
{
 COMPARE_SCALAR_FIELD(opno);







 if (a->opfuncid != b->opfuncid &&
  a->opfuncid != 0 &&
  b->opfuncid != 0)
  return 0;

 COMPARE_SCALAR_FIELD(opresulttype);
 COMPARE_SCALAR_FIELD(opretset);
 COMPARE_SCALAR_FIELD(opcollid);
 COMPARE_SCALAR_FIELD(inputcollid);
 COMPARE_NODE_FIELD(args);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
