
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int s_addr; } ;
struct in6_addr {int* s6_addr; } ;


 int memcpy (int*,int *,int) ;
 int memset (struct in6_addr*,int ,int) ;

__attribute__((used)) static void v4_to_v6(const struct in_addr *v4, struct in6_addr *v6) {
 memset(v6, 0, sizeof(*v6));
 v6->s6_addr[10]=0xff;
 v6->s6_addr[11]=0xff;
 memcpy(&v6->s6_addr[12], &v4->s_addr, 4);
}
