
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {char* name; char* org_name; char* table; char* org_table; char* def; char* db; int decimals; int type; int flags; int charsetnr; int length; int max_length; int db_length; int def_length; int org_table_length; int table_length; int org_name_length; int name_length; int sname; } ;
typedef TYPE_1__ MYSQL_FIELD ;


 int add_property_long (int *,char*,int ) ;
 int add_property_str (int *,char*,int ) ;
 int add_property_string (int *,char*,char*) ;
 int add_property_stringl (int *,char*,char*,int ) ;
 int zend_string_copy (int ) ;

__attribute__((used)) static void php_add_field_properties(zval *value, const MYSQL_FIELD *field)
{



 add_property_stringl(value, "name",(field->name ? field->name : ""), field->name_length);


 add_property_stringl(value, "orgname", (field->org_name ? field->org_name : ""), field->org_name_length);
 add_property_stringl(value, "table", (field->table ? field->table : ""), field->table_length);
 add_property_stringl(value, "orgtable", (field->org_table ? field->org_table : ""), field->org_table_length);
 add_property_stringl(value, "def", (field->def ? field->def : ""), field->def_length);
 add_property_stringl(value, "db", (field->db ? field->db : ""), field->db_length);





 add_property_string(value, "catalog", "def");

 add_property_long(value, "max_length", field->max_length);
 add_property_long(value, "length", field->length);
 add_property_long(value, "charsetnr", field->charsetnr);
 add_property_long(value, "flags", field->flags);
 add_property_long(value, "type", field->type);
 add_property_long(value, "decimals", field->decimals);
}
