
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_sample_format_t ;
typedef enum audio_format { ____Placeholder_audio_format } audio_format ;


 int AUDIO_FORMAT_16BIT ;
 int AUDIO_FORMAT_32BIT ;
 int AUDIO_FORMAT_FLOAT ;
 int AUDIO_FORMAT_U8BIT ;
 int AUDIO_FORMAT_UNKNOWN ;





__attribute__((used)) static enum audio_format pulse_to_obs_audio_format(pa_sample_format_t format)
{
 switch (format) {
 case 128:
  return AUDIO_FORMAT_U8BIT;
 case 130:
  return AUDIO_FORMAT_16BIT;
 case 129:
  return AUDIO_FORMAT_32BIT;
 case 131:
  return AUDIO_FORMAT_FLOAT;
 default:
  return AUDIO_FORMAT_UNKNOWN;
 }

 return AUDIO_FORMAT_UNKNOWN;
}
