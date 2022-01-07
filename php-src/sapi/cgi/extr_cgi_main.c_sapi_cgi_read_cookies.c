
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;

__attribute__((used)) static char *sapi_cgi_read_cookies(void)
{
 return getenv("HTTP_COOKIE");
}
