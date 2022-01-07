
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int transitioning_audio; int transitioning_video; } ;
typedef TYPE_1__ obs_source_t ;


 int obs_transition_stop (TYPE_1__*) ;

__attribute__((used)) static inline bool stop_audio(obs_source_t *transition)
{
 transition->transitioning_audio = 0;
 if (!transition->transitioning_video) {
  obs_transition_stop(transition);
  return 1;
 }

 return 0;
}
