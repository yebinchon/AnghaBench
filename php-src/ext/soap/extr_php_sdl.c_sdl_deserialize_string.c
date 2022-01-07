
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WSDL_CACHE_GET_INT (int,char**) ;
 int WSDL_CACHE_GET_N (char*,int,char**) ;
 int WSDL_NO_STRING_MARKER ;
 char* emalloc (int) ;

__attribute__((used)) static char* sdl_deserialize_string(char **in)
{
 char *s;
 int len;

 WSDL_CACHE_GET_INT(len, in);
 if (len == WSDL_NO_STRING_MARKER) {
  return ((void*)0);
 } else {
  s = emalloc(len+1);
  WSDL_CACHE_GET_N(s, len, in);
  s[len] = '\0';
  return s;
 }
}
