
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EAI_AGAIN ;
 int EAI_FAIL ;
 int EAI_FAMILY ;
 int EAI_MEMORY ;
 int NI_NAMEREQD ;
 int getnameinfo_ptr (struct sockaddr const*,int,char*,int,char*,int,int) ;
 scalar_t__ haveNativeWindowsIPv6routines () ;
 int * pg_inet_net_ntop (scalar_t__,int *,int,char*,int) ;
 int pg_ntoh16 (int ) ;
 int snprintf (char*,int,char*,int) ;
 int stub1 (struct sockaddr const*,int,char*,int,char*,int,int) ;

int
getnameinfo(const struct sockaddr *sa, int salen,
   char *node, int nodelen,
   char *service, int servicelen, int flags)
{
 if (sa == ((void*)0) || (node == ((void*)0) && service == ((void*)0)))
  return EAI_FAIL;







 if (flags & NI_NAMEREQD)
  return EAI_AGAIN;

 if (node)
 {
  if (sa->sa_family == AF_INET)
  {
   if (pg_inet_net_ntop(AF_INET,
         &((struct sockaddr_in *) sa)->sin_addr,
         sa->sa_family == AF_INET ? 32 : 128,
         node, nodelen) == ((void*)0))
    return EAI_MEMORY;
  }
  else
   return EAI_MEMORY;
 }

 if (service)
 {
  int ret = -1;

  if (sa->sa_family == AF_INET)
  {
   ret = snprintf(service, servicelen, "%d",
         pg_ntoh16(((struct sockaddr_in *) sa)->sin_port));
  }
  if (ret < 0 || ret >= servicelen)
   return EAI_MEMORY;
 }

 return 0;
}
