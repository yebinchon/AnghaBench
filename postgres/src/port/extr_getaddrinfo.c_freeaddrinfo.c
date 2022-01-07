
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_addr; } ;


 int free (struct addrinfo*) ;
 int freeaddrinfo_ptr (struct addrinfo*) ;
 scalar_t__ haveNativeWindowsIPv6routines () ;
 int stub1 (struct addrinfo*) ;

void
freeaddrinfo(struct addrinfo *res)
{
 if (res)
 {
  if (res->ai_addr)
   free(res->ai_addr);
  free(res);
 }
}
