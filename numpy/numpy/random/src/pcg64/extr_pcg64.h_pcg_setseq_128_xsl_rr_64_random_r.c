
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ pcg_state_setseq_128 ;


 int pcg_output_xsl_rr_128_64 (int ) ;
 int pcg_setseq_128_step_r (TYPE_1__*) ;

__attribute__((used)) static inline uint64_t
pcg_setseq_128_xsl_rr_64_random_r(pcg_state_setseq_128* rng)
{
    pcg_setseq_128_step_r(rng);
    return pcg_output_xsl_rr_128_64(rng->state);
}
