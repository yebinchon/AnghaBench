
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int s6_addr; } ;


 int memcmp (int ,char*,int) ;

__attribute__((used)) static int is_v4inv6(const struct in6_addr *a) {
 return !memcmp(a->s6_addr, "\0\0\0\0\0\0\0\0\0\0\xff\xff", 12);
}
