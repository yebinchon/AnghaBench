
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int atoi (char*) ;
 char* estrndup (char const*,int) ;
 char* memchr (char const*,char,size_t) ;
 int * strpprintf (int ,char*,char const*) ;

__attribute__((used)) static inline char *parse_ip_address_ex(const char *str, size_t str_len, int *portno, int get_err, zend_string **err)
{
 char *colon;
 char *host = ((void*)0);
 if (str_len) {
  colon = memchr(str, ':', str_len - 1);
 } else {
  colon = ((void*)0);
 }
 if (colon) {
  *portno = atoi(colon + 1);
  host = estrndup(str, colon - str);
 } else {
  if (get_err) {
   *err = strpprintf(0, "Failed to parse address \"%s\"", str);
  }
  return ((void*)0);
 }

 return host;
}
