
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct in_addr {int s_addr; } ;
struct hostent {scalar_t__ h_addrtype; int h_length; int * h_addr_list; } ;
typedef int php_socket ;


 scalar_t__ AF_INET ;
 int E_WARNING ;
 scalar_t__ MAXFQDNLEN ;
 int PHP_SOCKET_ERROR (int *,char*,scalar_t__) ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ h_errno ;
 scalar_t__ inet_aton (char*,struct in_addr*) ;
 int memcpy (int *,int ,int ) ;
 int php_error_docref (int *,int ,char*) ;
 struct hostent* php_network_gethostbyname (char*) ;
 scalar_t__ strlen (char*) ;

int php_set_inet_addr(struct sockaddr_in *sin, char *string, php_socket *php_sock)
{
 struct in_addr tmp;
 struct hostent *host_entry;

 if (inet_aton(string, &tmp)) {
  sin->sin_addr.s_addr = tmp.s_addr;
 } else {
  if (strlen(string) > MAXFQDNLEN || ! (host_entry = php_network_gethostbyname(string))) {




   PHP_SOCKET_ERROR(php_sock, "Host lookup failed", (-10000 - h_errno));

   return 0;
  }
  if (host_entry->h_addrtype != AF_INET) {
   php_error_docref(((void*)0), E_WARNING, "Host lookup failed: Non AF_INET domain returned on AF_INET socket");
   return 0;
  }
  memcpy(&(sin->sin_addr.s_addr), host_entry->h_addr_list[0], host_entry->h_length);
 }

 return 1;
}
