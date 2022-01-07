
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_convert_info {int dummy; } ;
struct obs_output {struct audio_convert_info audio_conversion; scalar_t__ audio_conversion_set; } ;



__attribute__((used)) static inline struct audio_convert_info *
get_audio_conversion(struct obs_output *output)
{
 return output->audio_conversion_set ? &output->audio_conversion : ((void*)0);
}
