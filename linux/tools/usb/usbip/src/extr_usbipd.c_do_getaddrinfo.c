
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int ai_family; int ai_flags; int ai_socktype; } ;
typedef int hints ;


 int AI_PASSIVE ;
 int SOCK_STREAM ;
 int err (char*,int ,int ) ;
 int gai_strerror (int) ;
 int getaddrinfo (char*,int ,struct addrinfo*,struct addrinfo**) ;
 int memset (struct addrinfo*,int ,int) ;
 int usbip_port_string ;

__attribute__((used)) static struct addrinfo *do_getaddrinfo(char *host, int ai_family)
{
 struct addrinfo hints, *ai_head;
 int rc;

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = ai_family;
 hints.ai_socktype = SOCK_STREAM;
 hints.ai_flags = AI_PASSIVE;

 rc = getaddrinfo(host, usbip_port_string, &hints, &ai_head);
 if (rc) {
  err("failed to get a network address %s: %s", usbip_port_string,
      gai_strerror(rc));
  return ((void*)0);
 }

 return ai_head;
}
