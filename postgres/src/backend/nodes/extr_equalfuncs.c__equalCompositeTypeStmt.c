
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CompositeTypeStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int coldeflist ;
 int typevar ;

__attribute__((used)) static bool
_equalCompositeTypeStmt(const CompositeTypeStmt *a, const CompositeTypeStmt *b)
{
 COMPARE_NODE_FIELD(typevar);
 COMPARE_NODE_FIELD(coldeflist);

 return 1;
}
