
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pcg_state_setseq_64 {int state; } ;


 int pcg_output_rxs_m_xs_64_64 (int ) ;
 int pcg_setseq_64_step_r (struct pcg_state_setseq_64*) ;

inline uint64_t
pcg_setseq_64_rxs_m_xs_64_random_r(struct pcg_state_setseq_64 *rng) {
  uint64_t oldstate = rng->state;
  pcg_setseq_64_step_r(rng);
  return pcg_output_rxs_m_xs_64_64(oldstate);
}
