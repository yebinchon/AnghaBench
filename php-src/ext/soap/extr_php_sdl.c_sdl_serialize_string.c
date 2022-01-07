
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smart_str ;


 int WSDL_CACHE_PUT_INT (int,int *) ;
 int WSDL_CACHE_PUT_N (char const*,int,int *) ;
 int WSDL_NO_STRING_MARKER ;
 int strlen (char const*) ;

__attribute__((used)) static void sdl_serialize_string(const char *str, smart_str *out)
{
 if (str) {
  int i = strlen(str);
  WSDL_CACHE_PUT_INT(i, out);
  if (i > 0) {
   WSDL_CACHE_PUT_N(str, i, out);
  }
 } else {
  WSDL_CACHE_PUT_INT(WSDL_NO_STRING_MARKER, out);
 }
}
