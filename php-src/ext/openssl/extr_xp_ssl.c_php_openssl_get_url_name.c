
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ host; } ;
typedef TYPE_1__ php_url ;


 size_t ZSTR_LEN (scalar_t__) ;
 char* ZSTR_VAL (scalar_t__) ;
 char* pestrndup (char const*,size_t,int) ;
 int php_url_free (TYPE_1__*) ;
 TYPE_1__* php_url_parse_ex (char const*,size_t) ;

__attribute__((used)) static char *php_openssl_get_url_name(const char *resourcename,
  size_t resourcenamelen, int is_persistent)
{
 php_url *url;

 if (!resourcename) {
  return ((void*)0);
 }

 url = php_url_parse_ex(resourcename, resourcenamelen);
 if (!url) {
  return ((void*)0);
 }

 if (url->host) {
  const char * host = ZSTR_VAL(url->host);
  char * url_name = ((void*)0);
  size_t len = ZSTR_LEN(url->host);


  while (len && host[len-1] == '.') {
   --len;
  }

  if (len) {
   url_name = pestrndup(host, len, is_persistent);
  }

  php_url_free(url);
  return url_name;
 }

 php_url_free(url);
 return ((void*)0);
}
