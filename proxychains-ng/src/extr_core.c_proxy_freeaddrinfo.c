
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;


 int PFUNC () ;
 int free (struct addrinfo*) ;

void proxy_freeaddrinfo(struct addrinfo *res) {
 PFUNC();
 free(res);
}
