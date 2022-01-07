
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ksft_plan ;
 int printf (char*,int) ;

__attribute__((used)) static inline void ksft_set_plan(unsigned int plan)
{
 ksft_plan = plan;
 printf("1..%d\n", ksft_plan);
}
