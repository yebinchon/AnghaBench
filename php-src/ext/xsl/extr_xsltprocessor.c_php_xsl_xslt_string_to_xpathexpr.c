
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char xmlChar ;


 int E_WARNING ;
 int php_error_docref (int *,int ,char*) ;
 scalar_t__ safe_emalloc (int,int,int ) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ xmlStrchr (char const*,char) ;
 int xmlStrlen (char const*) ;

__attribute__((used)) static char *php_xsl_xslt_string_to_xpathexpr(const char *str)
{
 const xmlChar *string = (const xmlChar *)str;

 xmlChar *value;
 int str_len;

 str_len = xmlStrlen(string) + 3;

 if (xmlStrchr(string, '"')) {
  if (xmlStrchr(string, '\'')) {
   php_error_docref(((void*)0), E_WARNING, "Cannot create XPath expression (string contains both quote and double-quotes)");
   return ((void*)0);
  }
  value = (xmlChar*) safe_emalloc (str_len, sizeof(xmlChar), 0);
  snprintf((char*)value, str_len, "'%s'", string);
 } else {
  value = (xmlChar*) safe_emalloc (str_len, sizeof(xmlChar), 0);
  snprintf((char *)value, str_len, "\"%s\"", string);
 }
 return (char *) value;
}
