
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GrantStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int behavior ;
 int grant_option ;
 int grantees ;
 int is_grant ;
 int objects ;
 int objtype ;
 int privileges ;
 int targtype ;

__attribute__((used)) static bool
_equalGrantStmt(const GrantStmt *a, const GrantStmt *b)
{
 COMPARE_SCALAR_FIELD(is_grant);
 COMPARE_SCALAR_FIELD(targtype);
 COMPARE_SCALAR_FIELD(objtype);
 COMPARE_NODE_FIELD(objects);
 COMPARE_NODE_FIELD(privileges);
 COMPARE_NODE_FIELD(grantees);
 COMPARE_SCALAR_FIELD(grant_option);
 COMPARE_SCALAR_FIELD(behavior);

 return 1;
}
