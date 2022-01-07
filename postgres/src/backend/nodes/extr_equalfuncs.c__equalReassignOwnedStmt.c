
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ReassignOwnedStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int newrole ;
 int roles ;

__attribute__((used)) static bool
_equalReassignOwnedStmt(const ReassignOwnedStmt *a, const ReassignOwnedStmt *b)
{
 COMPARE_NODE_FIELD(roles);
 COMPARE_NODE_FIELD(newrole);

 return 1;
}
