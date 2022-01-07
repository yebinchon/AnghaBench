
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pcg_state_32 {int dummy; } ;


 int pcg_unique_32_rxs_m_xs_32_random_r (struct pcg_state_32*) ;

inline uint32_t
pcg_unique_32_rxs_m_xs_32_boundedrand_r(struct pcg_state_32 *rng,
                                        uint32_t bound) {
  uint32_t threshold = -bound % bound;
  for (;;) {
    uint32_t r = pcg_unique_32_rxs_m_xs_32_random_r(rng);
    if (r >= threshold)
      return r % bound;
  }
}
