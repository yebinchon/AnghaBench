
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int print_addr (struct sockaddr*) ;
 int printf (char*) ;

__attribute__((used)) static void
callback(struct sockaddr *addr, struct sockaddr *mask, void *unused)
{
 printf("addr: ");
 print_addr(addr);
 printf("  mask: ");
 print_addr(mask);
 printf("\n");
}
