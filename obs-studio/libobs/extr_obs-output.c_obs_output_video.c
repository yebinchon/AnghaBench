
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_t ;
struct TYPE_4__ {int * video; } ;
typedef TYPE_1__ obs_output_t ;


 scalar_t__ obs_output_valid (TYPE_1__ const*,char*) ;

video_t *obs_output_video(const obs_output_t *output)
{
 return obs_output_valid(output, "obs_output_video") ? output->video
           : ((void*)0);
}
