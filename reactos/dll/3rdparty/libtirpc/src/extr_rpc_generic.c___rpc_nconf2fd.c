
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct netconfig {int dummy; } ;
struct __rpc_sockinfo {scalar_t__ si_af; int si_proto; int si_socktype; } ;
typedef int SOCKET ;


 scalar_t__ AF_INET6 ;
 int INVALID_SOCKET ;
 int IPV6_V6ONLY ;
 int SOL_IPV6 ;
 int __rpc_nconf2sockinfo (struct netconfig const*,struct __rpc_sockinfo*) ;
 int setsockopt (int ,int ,int ,char const*,int) ;
 int socket (scalar_t__,int ,int ) ;

SOCKET
__rpc_nconf2fd(const struct netconfig *nconf)
{
 struct __rpc_sockinfo si;
 SOCKET fd;

 if (!__rpc_nconf2sockinfo(nconf, &si))
  return 0;

 if ((fd = socket(si.si_af, si.si_socktype, si.si_proto)) != INVALID_SOCKET &&
     si.si_af == AF_INET6) {
  int val = 1;

  setsockopt(fd, SOL_IPV6, IPV6_V6ONLY, (const char *)&val, sizeof(val));
 }
 return fd;
}
