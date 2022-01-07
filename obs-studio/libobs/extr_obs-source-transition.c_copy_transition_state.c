
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct transition_state {int transitioning_audio; int transitioning_video; int * s; } ;
struct TYPE_3__ {int transitioning_audio; int transitioning_video; int * transition_sources; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_source_addref (int ) ;

__attribute__((used)) static inline void copy_transition_state(obs_source_t *transition,
      struct transition_state *state)
{
 state->s[0] = transition->transition_sources[0];
 state->s[1] = transition->transition_sources[1];
 obs_source_addref(state->s[0]);
 obs_source_addref(state->s[1]);

 state->transitioning_video = transition->transitioning_video;
 state->transitioning_audio = transition->transitioning_audio;
}
