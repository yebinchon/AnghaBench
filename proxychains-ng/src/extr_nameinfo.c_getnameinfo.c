
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;


 int pc_getnameinfo (void const*,int ,char*,int ,char*,int ,int) ;

int getnameinfo(const void *sa, socklen_t salen,
                   char *host, socklen_t hostlen, char *serv,
                   socklen_t servlen, int flags) {
 return pc_getnameinfo(sa, salen, host, hostlen, serv, servlen, flags);
}
