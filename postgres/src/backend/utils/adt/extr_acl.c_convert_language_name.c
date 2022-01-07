
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int Oid ;


 int get_language_oid (char*,int) ;
 char* text_to_cstring (int *) ;

__attribute__((used)) static Oid
convert_language_name(text *languagename)
{
 char *langname = text_to_cstring(languagename);

 return get_language_oid(langname, 0);
}
