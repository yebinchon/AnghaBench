
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SubscriptingRef ;
typedef int StringInfo ;


 int WRITE_INT_FIELD (int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_OID_FIELD (int ) ;
 int refassgnexpr ;
 int refcollid ;
 int refcontainertype ;
 int refelemtype ;
 int refexpr ;
 int reflowerindexpr ;
 int reftypmod ;
 int refupperindexpr ;

__attribute__((used)) static void
_outSubscriptingRef(StringInfo str, const SubscriptingRef *node)
{
 WRITE_NODE_TYPE("SUBSCRIPTINGREF");

 WRITE_OID_FIELD(refcontainertype);
 WRITE_OID_FIELD(refelemtype);
 WRITE_INT_FIELD(reftypmod);
 WRITE_OID_FIELD(refcollid);
 WRITE_NODE_FIELD(refupperindexpr);
 WRITE_NODE_FIELD(reflowerindexpr);
 WRITE_NODE_FIELD(refexpr);
 WRITE_NODE_FIELD(refassgnexpr);
}
