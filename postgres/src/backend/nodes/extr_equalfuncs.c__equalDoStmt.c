
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DoStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int args ;

__attribute__((used)) static bool
_equalDoStmt(const DoStmt *a, const DoStmt *b)
{
 COMPARE_NODE_FIELD(args);

 return 1;
}
