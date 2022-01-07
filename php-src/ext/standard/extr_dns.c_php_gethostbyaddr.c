
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
struct in_addr {int s_addr; } ;
struct in6_addr {int s_addr; } ;
struct hostent {char* h_name; } ;
typedef int addr6 ;
typedef int addr ;


 int AF_INET ;
 int AF_INET6 ;
 struct hostent* gethostbyaddr (char*,int,int ) ;
 int inet_addr (char*) ;
 scalar_t__ inet_pton (int ,char*,struct in_addr*) ;
 int strlen (char*) ;
 int * zend_string_init (char*,int ,int ) ;

__attribute__((used)) static zend_string *php_gethostbyaddr(char *ip)
{



 struct in_addr addr;
 struct hostent *hp;
 addr.s_addr = inet_addr(ip);

 if (addr.s_addr == -1) {
  return ((void*)0);
 }

 hp = gethostbyaddr((char *) &addr, sizeof(addr), AF_INET);


 if (!hp || hp->h_name == ((void*)0) || hp->h_name[0] == '\0') {
  return zend_string_init(ip, strlen(ip), 0);
 }

 return zend_string_init(hp->h_name, strlen(hp->h_name), 0);
}
