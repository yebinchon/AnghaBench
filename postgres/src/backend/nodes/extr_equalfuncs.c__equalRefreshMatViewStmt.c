
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RefreshMatViewStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int concurrent ;
 int relation ;
 int skipData ;

__attribute__((used)) static bool
_equalRefreshMatViewStmt(const RefreshMatViewStmt *a, const RefreshMatViewStmt *b)
{
 COMPARE_SCALAR_FIELD(concurrent);
 COMPARE_SCALAR_FIELD(skipData);
 COMPARE_NODE_FIELD(relation);

 return 1;
}
