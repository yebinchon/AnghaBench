
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;


 int INIT () ;
 int PDEBUG (char*,void*) ;
 int proxy_freeaddrinfo (struct addrinfo*) ;
 int proxychains_resolver ;
 int true_freeaddrinfo (struct addrinfo*) ;

void freeaddrinfo(struct addrinfo *res) {
 INIT();
 PDEBUG("freeaddrinfo %p \n", (void *) res);

 if(!proxychains_resolver)
  true_freeaddrinfo(res);
 else
  proxy_freeaddrinfo(res);
}
