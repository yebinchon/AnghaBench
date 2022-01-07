
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlChar ;
typedef int text ;


 scalar_t__ text_to_cstring (int *) ;

__attribute__((used)) static xmlChar *
pgxml_texttoxmlchar(text *textstring)
{
 return (xmlChar *) text_to_cstring(textstring);
}
