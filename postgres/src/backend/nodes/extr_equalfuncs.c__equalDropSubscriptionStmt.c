
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DropSubscriptionStmt ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int behavior ;
 int missing_ok ;
 int subname ;

__attribute__((used)) static bool
_equalDropSubscriptionStmt(const DropSubscriptionStmt *a,
         const DropSubscriptionStmt *b)
{
 COMPARE_STRING_FIELD(subname);
 COMPARE_SCALAR_FIELD(missing_ok);
 COMPARE_SCALAR_FIELD(behavior);

 return 1;
}
