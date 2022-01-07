
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;


 int AF_INET ;
 int inet_pton (int ,char const*,struct in_addr*) ;

int inet_aton(const char *cp, struct in_addr *inp) {

  return inet_pton(AF_INET, cp, inp);
}
