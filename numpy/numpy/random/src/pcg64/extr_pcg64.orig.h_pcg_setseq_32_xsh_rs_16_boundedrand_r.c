
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct pcg_state_setseq_32 {int dummy; } ;


 int pcg_setseq_32_xsh_rs_16_random_r (struct pcg_state_setseq_32*) ;

inline uint16_t
pcg_setseq_32_xsh_rs_16_boundedrand_r(struct pcg_state_setseq_32 *rng,
                                      uint16_t bound) {
  uint16_t threshold = ((uint16_t)(-bound)) % bound;
  for (;;) {
    uint16_t r = pcg_setseq_32_xsh_rs_16_random_r(rng);
    if (r >= threshold)
      return r % bound;
  }
}
