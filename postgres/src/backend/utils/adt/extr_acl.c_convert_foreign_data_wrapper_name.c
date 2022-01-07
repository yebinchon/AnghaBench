
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;


 int get_foreign_data_wrapper_oid (char*,int) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static Oid
convert_foreign_data_wrapper_name(text *fdwname)
{
 char *fdwstr = text_to_cstring(fdwname);

 return get_foreign_data_wrapper_oid(fdwstr, 0);
}
