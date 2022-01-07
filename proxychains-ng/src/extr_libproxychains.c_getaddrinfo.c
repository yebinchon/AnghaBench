
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;


 int INIT () ;
 int PDEBUG (char*,char const*,char const*) ;
 int proxy_getaddrinfo (char const*,char const*,struct addrinfo const*,struct addrinfo**) ;
 scalar_t__ proxychains_resolver ;
 int true_getaddrinfo (char const*,char const*,struct addrinfo const*,struct addrinfo**) ;

int getaddrinfo(const char *node, const char *service, const struct addrinfo *hints, struct addrinfo **res) {
 INIT();
 PDEBUG("getaddrinfo: %s %s\n", node ? node : "null", service ? service : "null");

 if(proxychains_resolver)
  return proxy_getaddrinfo(node, service, hints, res);
 else
  return true_getaddrinfo(node, service, hints, res);
}
