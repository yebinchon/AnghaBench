
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ transitioning_video; scalar_t__ transitioning_audio; } ;
typedef TYPE_1__ obs_source_t ;



__attribute__((used)) static inline bool transition_active(obs_source_t *transition)
{
 return transition->transitioning_audio ||
        transition->transitioning_video;
}
