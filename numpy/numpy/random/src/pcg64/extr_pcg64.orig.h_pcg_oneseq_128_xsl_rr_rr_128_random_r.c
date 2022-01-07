
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcg_state_128 {int state; } ;
typedef int pcg128_t ;


 int pcg_oneseq_128_step_r (struct pcg_state_128*) ;
 int pcg_output_xsl_rr_rr_128_128 (int ) ;

inline pcg128_t
pcg_oneseq_128_xsl_rr_rr_128_random_r(struct pcg_state_128 *rng) {
  pcg_oneseq_128_step_r(rng);
  return pcg_output_xsl_rr_rr_128_128(rng->state);
}
