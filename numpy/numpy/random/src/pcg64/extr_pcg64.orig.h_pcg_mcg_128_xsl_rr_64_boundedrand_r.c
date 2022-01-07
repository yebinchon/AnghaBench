
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pcg_state_128 {int dummy; } ;


 int pcg_mcg_128_xsl_rr_64_random_r (struct pcg_state_128*) ;

inline uint64_t pcg_mcg_128_xsl_rr_64_boundedrand_r(struct pcg_state_128 *rng,
                                                    uint64_t bound) {
  uint64_t threshold = -bound % bound;
  for (;;) {
    uint64_t r = pcg_mcg_128_xsl_rr_64_random_r(rng);
    if (r >= threshold)
      return r % bound;
  }
}
