
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {int dummy; } ;


 int freeaddrinfo (struct addrinfo*) ;

__attribute__((used)) inline static void
gc_freeaddrinfo_callback(void *addr)
{
    freeaddrinfo((struct addrinfo *) addr);
}
