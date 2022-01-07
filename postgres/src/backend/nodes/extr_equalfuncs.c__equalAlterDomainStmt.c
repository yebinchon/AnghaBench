
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterDomainStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int behavior ;
 int def ;
 int missing_ok ;
 int name ;
 int subtype ;
 int typeName ;

__attribute__((used)) static bool
_equalAlterDomainStmt(const AlterDomainStmt *a, const AlterDomainStmt *b)
{
 COMPARE_SCALAR_FIELD(subtype);
 COMPARE_NODE_FIELD(typeName);
 COMPARE_STRING_FIELD(name);
 COMPARE_NODE_FIELD(def);
 COMPARE_SCALAR_FIELD(behavior);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}
