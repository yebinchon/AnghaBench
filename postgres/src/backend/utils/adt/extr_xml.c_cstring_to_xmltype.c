
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmltype ;


 scalar_t__ cstring_to_text (char const*) ;

__attribute__((used)) static xmltype *
cstring_to_xmltype(const char *string)
{
 return (xmltype *) cstring_to_text(string);
}
