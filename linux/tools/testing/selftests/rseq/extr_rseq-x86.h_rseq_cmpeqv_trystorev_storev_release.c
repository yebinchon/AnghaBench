
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rseq_cmpeqv_trystorev_storev (intptr_t*,intptr_t,intptr_t*,intptr_t,intptr_t,int) ;

__attribute__((used)) static inline __attribute__((always_inline))
int rseq_cmpeqv_trystorev_storev_release(intptr_t *v, intptr_t expect,
      intptr_t *v2, intptr_t newv2,
      intptr_t newv, int cpu)
{
 return rseq_cmpeqv_trystorev_storev(v, expect, v2, newv2, newv, cpu);
}
