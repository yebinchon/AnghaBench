
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PLy_get_sqlerrcode (int *,int*) ;
 int get_string_attr (int *,char*,char**) ;

__attribute__((used)) static void
PLy_get_error_data(PyObject *exc, int *sqlerrcode, char **detail, char **hint,
       char **schema_name, char **table_name, char **column_name,
       char **datatype_name, char **constraint_name)
{
 PLy_get_sqlerrcode(exc, sqlerrcode);
 get_string_attr(exc, "detail", detail);
 get_string_attr(exc, "hint", hint);
 get_string_attr(exc, "schema_name", schema_name);
 get_string_attr(exc, "table_name", table_name);
 get_string_attr(exc, "column_name", column_name);
 get_string_attr(exc, "datatype_name", datatype_name);
 get_string_attr(exc, "constraint_name", constraint_name);
}
