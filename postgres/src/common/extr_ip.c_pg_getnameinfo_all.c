
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int dummy; } ;
struct sockaddr_storage {scalar_t__ ss_family; } ;
struct sockaddr {int dummy; } ;


 scalar_t__ AF_UNIX ;
 int getnameinfo (struct sockaddr const*,int,char*,int,char*,int,int) ;
 int getnameinfo_unix (struct sockaddr_un const*,int,char*,int,char*,int,int) ;
 int strlcpy (char*,char*,int) ;

int
pg_getnameinfo_all(const struct sockaddr_storage *addr, int salen,
       char *node, int nodelen,
       char *service, int servicelen,
       int flags)
{
 int rc;
  rc = getnameinfo((const struct sockaddr *) addr, salen,
       node, nodelen,
       service, servicelen,
       flags);

 if (rc != 0)
 {
  if (node)
   strlcpy(node, "???", nodelen);
  if (service)
   strlcpy(service, "???", servicelen);
 }

 return rc;
}
