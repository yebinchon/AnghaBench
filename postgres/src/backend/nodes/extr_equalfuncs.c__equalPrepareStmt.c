
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PrepareStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int argtypes ;
 int name ;
 int query ;

__attribute__((used)) static bool
_equalPrepareStmt(const PrepareStmt *a, const PrepareStmt *b)
{
 COMPARE_STRING_FIELD(name);
 COMPARE_NODE_FIELD(argtypes);
 COMPARE_NODE_FIELD(query);

 return 1;
}
