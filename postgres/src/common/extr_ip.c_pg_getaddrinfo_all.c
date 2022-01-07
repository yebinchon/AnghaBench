
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {scalar_t__ ai_family; } ;


 scalar_t__ AF_UNIX ;
 int getaddrinfo (char const*,char const*,struct addrinfo const*,struct addrinfo**) ;
 int getaddrinfo_unix (char const*,struct addrinfo const*,struct addrinfo**) ;

int
pg_getaddrinfo_all(const char *hostname, const char *servname,
       const struct addrinfo *hintp, struct addrinfo **result)
{
 int rc;


 *result = ((void*)0);







 rc = getaddrinfo((!hostname || hostname[0] == '\0') ? ((void*)0) : hostname,
      servname, hintp, result);

 return rc;
}
