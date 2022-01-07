
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;


 int AF_INET ;
 int inet_pton (int ,char const*,int *) ;

in_addr_t inet_addr(const char *cp) {
  in_addr_t ret;
  if (inet_pton(AF_INET, cp, &ret) != 1) {
    return 0;
  }

  return ret;
}
