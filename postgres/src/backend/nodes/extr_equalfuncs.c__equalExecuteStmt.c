
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ExecuteStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int name ;
 int params ;

__attribute__((used)) static bool
_equalExecuteStmt(const ExecuteStmt *a, const ExecuteStmt *b)
{
 COMPARE_STRING_FIELD(name);
 COMPARE_NODE_FIELD(params);

 return 1;
}
