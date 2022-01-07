
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DropOwnedStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int behavior ;
 int roles ;

__attribute__((used)) static bool
_equalDropOwnedStmt(const DropOwnedStmt *a, const DropOwnedStmt *b)
{
 COMPARE_NODE_FIELD(roles);
 COMPARE_SCALAR_FIELD(behavior);

 return 1;
}
