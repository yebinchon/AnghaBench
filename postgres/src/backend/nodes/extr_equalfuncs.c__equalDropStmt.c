
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DropStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int behavior ;
 int concurrent ;
 int missing_ok ;
 int objects ;
 int removeType ;

__attribute__((used)) static bool
_equalDropStmt(const DropStmt *a, const DropStmt *b)
{
 COMPARE_NODE_FIELD(objects);
 COMPARE_SCALAR_FIELD(removeType);
 COMPARE_SCALAR_FIELD(behavior);
 COMPARE_SCALAR_FIELD(missing_ok);
 COMPARE_SCALAR_FIELD(concurrent);

 return 1;
}
