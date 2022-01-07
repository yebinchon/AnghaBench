
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int ImportForeignSchemaStmt ;


 int ImportForeignSchemaType ;
 int WRITE_ENUM_FIELD (int ,int ) ;
 int WRITE_NODE_FIELD (int ) ;
 int WRITE_NODE_TYPE (char*) ;
 int WRITE_STRING_FIELD (int ) ;
 int list_type ;
 int local_schema ;
 int options ;
 int remote_schema ;
 int server_name ;
 int table_list ;

__attribute__((used)) static void
_outImportForeignSchemaStmt(StringInfo str, const ImportForeignSchemaStmt *node)
{
 WRITE_NODE_TYPE("IMPORTFOREIGNSCHEMASTMT");

 WRITE_STRING_FIELD(server_name);
 WRITE_STRING_FIELD(remote_schema);
 WRITE_STRING_FIELD(local_schema);
 WRITE_ENUM_FIELD(list_type, ImportForeignSchemaType);
 WRITE_NODE_FIELD(table_list);
 WRITE_NODE_FIELD(options);
}
