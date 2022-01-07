
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CreateTableAsStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int if_not_exists ;
 int into ;
 int is_select_into ;
 int query ;
 int relkind ;

__attribute__((used)) static bool
_equalCreateTableAsStmt(const CreateTableAsStmt *a, const CreateTableAsStmt *b)
{
 COMPARE_NODE_FIELD(query);
 COMPARE_NODE_FIELD(into);
 COMPARE_SCALAR_FIELD(relkind);
 COMPARE_SCALAR_FIELD(is_select_into);
 COMPARE_SCALAR_FIELD(if_not_exists);

 return 1;
}
