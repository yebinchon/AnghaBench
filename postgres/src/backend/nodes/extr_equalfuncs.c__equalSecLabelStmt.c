
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SecLabelStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int label ;
 int object ;
 int objtype ;
 int provider ;

__attribute__((used)) static bool
_equalSecLabelStmt(const SecLabelStmt *a, const SecLabelStmt *b)
{
 COMPARE_SCALAR_FIELD(objtype);
 COMPARE_NODE_FIELD(object);
 COMPARE_STRING_FIELD(provider);
 COMPARE_STRING_FIELD(label);

 return 1;
}
