
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * video_encoder; } ;
typedef TYPE_1__ obs_output_t ;
typedef int obs_encoder_t ;


 scalar_t__ obs_output_valid (TYPE_1__ const*,char*) ;

obs_encoder_t *obs_output_get_video_encoder(const obs_output_t *output)
{
 return obs_output_valid(output, "obs_output_get_video_encoder")
         ? output->video_encoder
         : ((void*)0);
}
