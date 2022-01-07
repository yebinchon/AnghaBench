
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAFNOSUPPORT ;


 int errno ;
 char* inet_net_ntop_ipv4 (void const*,int,char*,size_t) ;
 char* inet_net_ntop_ipv6 (void const*,int,char*,size_t) ;

char *
pg_inet_net_ntop(int af, const void *src, int bits, char *dst, size_t size)
{







 switch (af)
 {
  case 129:
   return (inet_net_ntop_ipv4(src, bits, dst, size));
  case 128:

  case 130:

   return (inet_net_ntop_ipv6(src, bits, dst, size));
  default:
   errno = EAFNOSUPPORT;
   return (((void*)0));
 }
}
