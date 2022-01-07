
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CaseExpr ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int arg ;
 int args ;
 int casecollid ;
 int casetype ;
 int defresult ;
 int location ;

__attribute__((used)) static bool
_equalCaseExpr(const CaseExpr *a, const CaseExpr *b)
{
 COMPARE_SCALAR_FIELD(casetype);
 COMPARE_SCALAR_FIELD(casecollid);
 COMPARE_NODE_FIELD(arg);
 COMPARE_NODE_FIELD(args);
 COMPARE_NODE_FIELD(defresult);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
