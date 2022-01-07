
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct pcg_state_64 {int state; } ;


 int pcg_oneseq_64_step_r (struct pcg_state_64*) ;
 int pcg_output_xsl_rr_64_32 (int ) ;

inline uint32_t pcg_oneseq_64_xsl_rr_32_random_r(struct pcg_state_64 *rng) {
  uint64_t oldstate = rng->state;
  pcg_oneseq_64_step_r(rng);
  return pcg_output_xsl_rr_64_32(oldstate);
}
