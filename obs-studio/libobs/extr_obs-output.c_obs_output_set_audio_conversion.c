
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct audio_convert_info {int dummy; } ;
struct TYPE_4__ {int audio_conversion_set; struct audio_convert_info audio_conversion; } ;
typedef TYPE_1__ obs_output_t ;


 int obs_output_valid (TYPE_1__*,char*) ;
 int obs_ptr_valid (struct audio_convert_info const*,char*) ;

void obs_output_set_audio_conversion(
 obs_output_t *output, const struct audio_convert_info *conversion)
{
 if (!obs_output_valid(output, "obs_output_set_audio_conversion"))
  return;
 if (!obs_ptr_valid(conversion, "obs_output_set_audio_conversion"))
  return;

 output->audio_conversion = *conversion;
 output->audio_conversion_set = 1;
}
