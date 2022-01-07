
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AlterTableCmd ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int behavior ;
 int def ;
 int missing_ok ;
 int name ;
 int newowner ;
 int num ;
 int subtype ;

__attribute__((used)) static bool
_equalAlterTableCmd(const AlterTableCmd *a, const AlterTableCmd *b)
{
 COMPARE_SCALAR_FIELD(subtype);
 COMPARE_STRING_FIELD(name);
 COMPARE_SCALAR_FIELD(num);
 COMPARE_NODE_FIELD(newowner);
 COMPARE_NODE_FIELD(def);
 COMPARE_SCALAR_FIELD(behavior);
 COMPARE_SCALAR_FIELD(missing_ok);

 return 1;
}
