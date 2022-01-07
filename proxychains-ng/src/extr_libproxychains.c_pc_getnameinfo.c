
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * s6_addr; } ;
struct sockaddr_in6 {unsigned int sin6_scope_id; TYPE_1__ sin6_addr; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EAI_FAMILY ;
 int EAI_OVERFLOW ;
 int INIT () ;
 int PFUNC () ;
 scalar_t__ SOCKFAMILY (struct sockaddr const) ;
 int SOCKPORT (struct sockaddr const) ;
 int inet_ntop (scalar_t__,void const*,char*,int) ;
 scalar_t__ is_v4inv6 (TYPE_1__*) ;
 int memcpy (unsigned char*,int *,int) ;
 int ntohs (int ) ;
 int proxychains_resolver ;
 int snprintf (char*,int,char*,int) ;
 size_t strlen (char*) ;
 int true_getnameinfo (struct sockaddr const*,int,char*,int,char*,int,int) ;

int pc_getnameinfo(const struct sockaddr *sa, socklen_t salen,
            char *host, socklen_t hostlen, char *serv,
            socklen_t servlen, int flags)
{
 INIT();
 PFUNC();

 if(!proxychains_resolver) {
  return true_getnameinfo(sa, salen, host, hostlen, serv, servlen, flags);
 } else {
  if(!salen || !(SOCKFAMILY(*sa) == AF_INET || SOCKFAMILY(*sa) == AF_INET6))
   return EAI_FAMILY;
  int v6 = SOCKFAMILY(*sa) == AF_INET6;
  if(salen < (v6?sizeof(struct sockaddr_in6):sizeof(struct sockaddr_in)))
   return EAI_FAMILY;
  if(hostlen) {
   unsigned char v4inv6buf[4];
   const void *ip = v6 ? (void*)&((struct sockaddr_in6*)sa)->sin6_addr
                       : (void*)&((struct sockaddr_in*)sa)->sin_addr;
   unsigned scopeid = 0;
   if(v6) {
    if(is_v4inv6(&((struct sockaddr_in6*)sa)->sin6_addr)) {
     memcpy(v4inv6buf, &((struct sockaddr_in6*)sa)->sin6_addr.s6_addr[12], 4);
     ip = v4inv6buf;
     v6 = 0;
    } else
     scopeid = ((struct sockaddr_in6 *)sa)->sin6_scope_id;
   }
   if(!inet_ntop(v6?AF_INET6:AF_INET,ip,host,hostlen))
    return EAI_OVERFLOW;
   if(scopeid) {
    size_t l = strlen(host);
    if(snprintf(host+l, hostlen-l, "%%%u", scopeid) >= hostlen-l)
     return EAI_OVERFLOW;
   }
  }
  if(servlen) {
   if(snprintf(serv, servlen, "%d", ntohs(SOCKPORT(*sa))) >= servlen)
    return EAI_OVERFLOW;
  }
 }
 return 0;
}
