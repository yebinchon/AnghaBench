
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ConstraintsSetStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int constraints ;
 int deferred ;

__attribute__((used)) static bool
_equalConstraintsSetStmt(const ConstraintsSetStmt *a, const ConstraintsSetStmt *b)
{
 COMPARE_NODE_FIELD(constraints);
 COMPARE_SCALAR_FIELD(deferred);

 return 1;
}
