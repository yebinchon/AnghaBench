
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rseq_cmpeqv_trymemcpy_storev (intptr_t*,intptr_t,void*,void*,size_t,intptr_t,int) ;

__attribute__((used)) static inline __attribute__((always_inline))
int rseq_cmpeqv_trymemcpy_storev_release(intptr_t *v, intptr_t expect,
      void *dst, void *src, size_t len,
      intptr_t newv, int cpu)
{
 return rseq_cmpeqv_trymemcpy_storev(v, expect, dst, src, len,
         newv, cpu);
}
