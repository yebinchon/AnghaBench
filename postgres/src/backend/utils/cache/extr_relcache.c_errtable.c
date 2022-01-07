
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int PG_DIAG_SCHEMA_NAME ;
 int PG_DIAG_TABLE_NAME ;
 int RelationGetNamespace (int ) ;
 int RelationGetRelationName (int ) ;
 int err_generic_string (int ,int ) ;
 int get_namespace_name (int ) ;

int
errtable(Relation rel)
{
 err_generic_string(PG_DIAG_SCHEMA_NAME,
        get_namespace_name(RelationGetNamespace(rel)));
 err_generic_string(PG_DIAG_TABLE_NAME, RelationGetRelationName(rel));

 return 0;
}
