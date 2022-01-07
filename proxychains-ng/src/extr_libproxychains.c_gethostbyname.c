
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;


 int INIT () ;
 int PDEBUG (char*,char const*) ;
 int ghbndata ;
 struct hostent* proxy_gethostbyname (char const*,int *) ;
 scalar_t__ proxychains_resolver ;
 struct hostent* true_gethostbyname (char const*) ;

struct hostent *gethostbyname(const char *name) {
 INIT();
 PDEBUG("gethostbyname: %s\n", name);

 if(proxychains_resolver)
  return proxy_gethostbyname(name, &ghbndata);
 else
  return true_gethostbyname(name);

 return ((void*)0);
}
