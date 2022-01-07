
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int sin_addr; } ;
typedef int LPSTR ;
typedef int LPSOCKADDR ;


 int AF_INET ;
 int AF_INET6 ;
 int GetLastError () ;
 int SOCKET_ERROR ;
 int WSAStringToAddressA (int ,int ,int *,int ,int*) ;
 scalar_t__ inet_pton (int ,char const*,int *) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int * strchr (char const*,char) ;
 int warn (char*,int ) ;

bool netif_str_to_addr(struct sockaddr_storage *out, int *addr_len,
         const char *addr)
{
 bool ipv6;

 memset(out, 0, sizeof(*out));
 *addr_len = 0;

 if (!addr)
  return 0;

 ipv6 = (strchr(addr, ':') != ((void*)0));
 out->ss_family = ipv6 ? AF_INET6 : AF_INET;
 *addr_len = sizeof(*out);
 struct sockaddr_in *sin = (struct sockaddr_in *)out;
 if (inet_pton(out->ss_family, addr, &sin->sin_addr)) {
  *addr_len = ipv6 ? sizeof(struct sockaddr_in6)
     : sizeof(struct sockaddr_in);
  return 1;
 }

 return 0;

}
