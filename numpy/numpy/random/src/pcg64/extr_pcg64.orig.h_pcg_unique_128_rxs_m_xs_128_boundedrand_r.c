
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcg_state_128 {int dummy; } ;
typedef int pcg128_t ;


 int pcg_unique_128_rxs_m_xs_128_random_r (struct pcg_state_128*) ;

inline pcg128_t
pcg_unique_128_rxs_m_xs_128_boundedrand_r(struct pcg_state_128 *rng,
                                          pcg128_t bound) {
  pcg128_t threshold = -bound % bound;
  for (;;) {
    pcg128_t r = pcg_unique_128_rxs_m_xs_128_random_r(rng);
    if (r >= threshold)
      return r % bound;
  }
}
