
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int pcg_state; } ;
typedef TYPE_1__ pcg64_state ;


 int pcg64_random_r (int ) ;

__attribute__((used)) static inline uint64_t pcg64_next64(pcg64_state *state) {
  return pcg64_random_r(state->pcg_state);
}
