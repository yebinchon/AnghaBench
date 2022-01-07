
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubscriptingRef ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int refassgnexpr ;
 int refcollid ;
 int refcontainertype ;
 int refelemtype ;
 int refexpr ;
 int reflowerindexpr ;
 int reftypmod ;
 int refupperindexpr ;

__attribute__((used)) static bool
_equalSubscriptingRef(const SubscriptingRef *a, const SubscriptingRef *b)
{
 COMPARE_SCALAR_FIELD(refcontainertype);
 COMPARE_SCALAR_FIELD(refelemtype);
 COMPARE_SCALAR_FIELD(reftypmod);
 COMPARE_SCALAR_FIELD(refcollid);
 COMPARE_NODE_FIELD(refupperindexpr);
 COMPARE_NODE_FIELD(reflowerindexpr);
 COMPARE_NODE_FIELD(refexpr);
 COMPARE_NODE_FIELD(refassgnexpr);

 return 1;
}
