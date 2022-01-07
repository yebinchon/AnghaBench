
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_t ;
struct TYPE_4__ {int * audio; int * video; } ;
typedef TYPE_1__ obs_output_t ;
typedef int audio_t ;


 int obs_output_valid (TYPE_1__*,char*) ;

void obs_output_set_media(obs_output_t *output, video_t *video, audio_t *audio)
{
 if (!obs_output_valid(output, "obs_output_set_media"))
  return;

 output->video = video;
 output->audio = audio;
}
