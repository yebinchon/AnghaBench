
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
struct in_addr {struct in_addr* s_addr; } ;
struct hostent {struct in_addr* h_addr_list; } ;


 char* inet_ntoa (struct in_addr) ;
 int memcpy (struct in_addr**,struct in_addr*,int) ;
 struct hostent* php_network_gethostbyname (char*) ;
 int strlen (char*) ;
 int * zend_string_init (char*,int ,int ) ;

__attribute__((used)) static zend_string *php_gethostbyname(char *name)
{
 struct hostent *hp;
 struct in_addr *h_addr_0;
 struct in_addr in;
 char *address;

 hp = php_network_gethostbyname(name);
 if (!hp) {
  return zend_string_init(name, strlen(name), 0);
 }


 memcpy(&h_addr_0, &hp->h_addr_list[0], sizeof(struct in_addr *));
 if (!h_addr_0) {
  return zend_string_init(name, strlen(name), 0);
 }

 memcpy(&in.s_addr, h_addr_0, sizeof(in.s_addr));

 address = inet_ntoa(in);
 return zend_string_init(address, strlen(address), 0);
}
