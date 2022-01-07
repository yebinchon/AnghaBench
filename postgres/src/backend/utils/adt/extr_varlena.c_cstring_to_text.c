
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;


 int * cstring_to_text_with_len (char const*,int ) ;
 int strlen (char const*) ;

text *
cstring_to_text(const char *s)
{
 return cstring_to_text_with_len(s, strlen(s));
}
