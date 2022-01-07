
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int ss_family; } ;
struct sockaddr {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;


 int AF_UNSPEC ;
 int getsockname (int,struct sockaddr*,int*) ;

__attribute__((used)) static int
socket_family(int s)
{
  struct sockaddr_storage ss;
  socklen_t salen;

  salen = sizeof(ss);
  if (getsockname(s, (struct sockaddr *)&ss, &salen) == -1)
    return AF_UNSPEC;
  return ss.ss_family;
}
