
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * audio; } ;
typedef TYPE_1__ obs_output_t ;
typedef int audio_t ;


 scalar_t__ obs_output_valid (TYPE_1__ const*,char*) ;

audio_t *obs_output_audio(const obs_output_t *output)
{
 return obs_output_valid(output, "obs_output_audio") ? output->audio
           : ((void*)0);
}
