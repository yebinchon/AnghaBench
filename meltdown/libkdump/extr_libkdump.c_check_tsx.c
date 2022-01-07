
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cpuid_count (int,int ,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int __get_cpuid_max (int ,int *) ;

__attribute__((used)) static int check_tsx() {

  if (__get_cpuid_max(0, ((void*)0)) >= 7) {
    unsigned a, b, c, d;
    __cpuid_count(7, 0, a, b, c, d);
    return (b & (1 << 11)) ? 1 : 0;
  } else
    return 0;





}
