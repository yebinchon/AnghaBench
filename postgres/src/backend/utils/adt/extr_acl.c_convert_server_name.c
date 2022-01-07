
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;


 int get_foreign_server_oid (char*,int) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static Oid
convert_server_name(text *servername)
{
 char *serverstr = text_to_cstring(servername);

 return get_foreign_server_oid(serverstr, 0);
}
