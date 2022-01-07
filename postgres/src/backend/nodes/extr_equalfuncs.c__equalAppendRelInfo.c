
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AppendRelInfo ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int child_relid ;
 int child_reltype ;
 int parent_relid ;
 int parent_reloid ;
 int parent_reltype ;
 int translated_vars ;

__attribute__((used)) static bool
_equalAppendRelInfo(const AppendRelInfo *a, const AppendRelInfo *b)
{
 COMPARE_SCALAR_FIELD(parent_relid);
 COMPARE_SCALAR_FIELD(child_relid);
 COMPARE_SCALAR_FIELD(parent_reltype);
 COMPARE_SCALAR_FIELD(child_reltype);
 COMPARE_NODE_FIELD(translated_vars);
 COMPARE_SCALAR_FIELD(parent_reloid);

 return 1;
}
