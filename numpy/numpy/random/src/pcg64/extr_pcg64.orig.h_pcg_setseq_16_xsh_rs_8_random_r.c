
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct pcg_state_setseq_16 {int state; } ;


 int pcg_output_xsh_rs_16_8 (int ) ;
 int pcg_setseq_16_step_r (struct pcg_state_setseq_16*) ;

inline uint8_t
pcg_setseq_16_xsh_rs_8_random_r(struct pcg_state_setseq_16 *rng) {
  uint16_t oldstate = rng->state;
  pcg_setseq_16_step_r(rng);
  return pcg_output_xsh_rs_16_8(oldstate);
}
