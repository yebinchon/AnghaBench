
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int t ;
struct sockaddr_in6 {int member_0; } ;
struct sockaddr_in {int member_0; } ;
typedef int socklen_t ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_1__ php_socket ;
struct TYPE_9__ {scalar_t__ ss_family; } ;
typedef TYPE_2__ php_sockaddr_storage ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int E_WARNING ;
 int memcpy (TYPE_2__*,struct sockaddr_in6*,int) ;
 int php_error_docref (int *,int ,char*) ;
 scalar_t__ php_set_inet6_addr (struct sockaddr_in6*,char*,TYPE_1__*) ;
 scalar_t__ php_set_inet_addr (struct sockaddr_in6*,char*,TYPE_1__*) ;

int php_set_inet46_addr(php_sockaddr_storage *ss, socklen_t *ss_len, char *string, php_socket *php_sock)
{
 if (php_sock->type == AF_INET) {
  struct sockaddr_in t = {0};
  if (php_set_inet_addr(&t, string, php_sock)) {
   memcpy(ss, &t, sizeof t);
   ss->ss_family = AF_INET;
   *ss_len = sizeof(t);
   return 1;
  }
 }
 else {
  php_error_docref(((void*)0), E_WARNING,
   "IP address used in the context of an unexpected type of socket");
 }
 return 0;
}
