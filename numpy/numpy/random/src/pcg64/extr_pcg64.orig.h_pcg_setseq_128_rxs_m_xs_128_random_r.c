
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcg_state_setseq_128 {int state; } ;
typedef int pcg128_t ;


 int pcg_output_rxs_m_xs_128_128 (int ) ;
 int pcg_setseq_128_step_r (struct pcg_state_setseq_128*) ;

inline pcg128_t
pcg_setseq_128_rxs_m_xs_128_random_r(struct pcg_state_setseq_128 *rng) {
  pcg_setseq_128_step_r(rng);
  return pcg_output_rxs_m_xs_128_128(rng->state);
}
