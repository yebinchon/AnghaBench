
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int * cstring_to_text (char*) ;
 int pfree (char*) ;

__attribute__((used)) static text *
string_to_text(char *str)
{
 text *result;

 result = cstring_to_text(str);
 pfree(str);
 return result;
}
