
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ImportForeignSchemaStmt ;


 int COMPARE_NODE_FIELD (int ) ;
 int COMPARE_SCALAR_FIELD (int ) ;
 int COMPARE_STRING_FIELD (int ) ;
 int list_type ;
 int local_schema ;
 int options ;
 int remote_schema ;
 int server_name ;
 int table_list ;

__attribute__((used)) static bool
_equalImportForeignSchemaStmt(const ImportForeignSchemaStmt *a, const ImportForeignSchemaStmt *b)
{
 COMPARE_STRING_FIELD(server_name);
 COMPARE_STRING_FIELD(remote_schema);
 COMPARE_STRING_FIELD(local_schema);
 COMPARE_SCALAR_FIELD(list_type);
 COMPARE_NODE_FIELD(table_list);
 COMPARE_NODE_FIELD(options);

 return 1;
}
