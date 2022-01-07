
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;


 int get_tablespace_oid (char*,int) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static Oid
convert_tablespace_name(text *tablespacename)
{
 char *spcname = text_to_cstring(tablespacename);

 return get_tablespace_oid(spcname, 0);
}
