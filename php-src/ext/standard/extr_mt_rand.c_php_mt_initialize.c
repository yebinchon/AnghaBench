
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int N ;

__attribute__((used)) static inline void php_mt_initialize(uint32_t seed, uint32_t *state)
{





 register uint32_t *s = state;
 register uint32_t *r = state;
 register int i = 1;

 *s++ = seed & 0xffffffffU;
 for( ; i < N; ++i ) {
  *s++ = ( 1812433253U * ( *r ^ (*r >> 30) ) + i ) & 0xffffffffU;
  r++;
 }
}
