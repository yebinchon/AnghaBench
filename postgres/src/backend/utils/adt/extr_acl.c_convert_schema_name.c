
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;


 int get_namespace_oid (char*,int) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static Oid
convert_schema_name(text *schemaname)
{
 char *nspname = text_to_cstring(schemaname);

 return get_namespace_oid(nspname, 0);
}
