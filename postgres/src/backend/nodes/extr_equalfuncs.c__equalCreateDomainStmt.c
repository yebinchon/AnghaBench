
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateDomainStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int collClause ;
 int constraints ;
 int domainname ;
 int typeName ;

__attribute__((used)) static bool
_equalCreateDomainStmt(const CreateDomainStmt *a, const CreateDomainStmt *b)
{
 COMPARE_NODE_FIELD(domainname);
 COMPARE_NODE_FIELD(typeName);
 COMPARE_NODE_FIELD(collClause);
 COMPARE_NODE_FIELD(constraints);

 return 1;
}
