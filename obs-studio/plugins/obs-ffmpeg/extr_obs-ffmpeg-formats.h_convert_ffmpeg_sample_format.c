
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum audio_format { ____Placeholder_audio_format } audio_format ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;


 int AUDIO_FORMAT_16BIT ;
 int AUDIO_FORMAT_16BIT_PLANAR ;
 int AUDIO_FORMAT_32BIT ;
 int AUDIO_FORMAT_32BIT_PLANAR ;
 int AUDIO_FORMAT_FLOAT ;
 int AUDIO_FORMAT_FLOAT_PLANAR ;
 int AUDIO_FORMAT_U8BIT ;
 int AUDIO_FORMAT_U8BIT_PLANAR ;
__attribute__((used)) static inline enum audio_format
convert_ffmpeg_sample_format(enum AVSampleFormat format)
{
 switch ((uint32_t)format) {
 case 129:
  return AUDIO_FORMAT_U8BIT;
 case 133:
  return AUDIO_FORMAT_16BIT;
 case 131:
  return AUDIO_FORMAT_32BIT;
 case 135:
  return AUDIO_FORMAT_FLOAT;
 case 128:
  return AUDIO_FORMAT_U8BIT_PLANAR;
 case 132:
  return AUDIO_FORMAT_16BIT_PLANAR;
 case 130:
  return AUDIO_FORMAT_32BIT_PLANAR;
 case 134:
  return AUDIO_FORMAT_FLOAT_PLANAR;
 }


 return AUDIO_FORMAT_16BIT;
}
