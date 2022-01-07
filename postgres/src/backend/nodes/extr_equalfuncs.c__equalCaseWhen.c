
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CaseWhen ;


 int COMPARE_LOCATION_FIELD (int ) ;
 int COMPARE_NODE_FIELD (int ) ;
 int expr ;
 int location ;
 int result ;

__attribute__((used)) static bool
_equalCaseWhen(const CaseWhen *a, const CaseWhen *b)
{
 COMPARE_NODE_FIELD(expr);
 COMPARE_NODE_FIELD(result);
 COMPARE_LOCATION_FIELD(location);

 return 1;
}
