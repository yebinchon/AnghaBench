
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum audio_format { ____Placeholder_audio_format } audio_format ;
typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
 int AV_SAMPLE_FMT_FLT ;
 int AV_SAMPLE_FMT_FLTP ;
 int AV_SAMPLE_FMT_S16 ;
 int AV_SAMPLE_FMT_S16P ;
 int AV_SAMPLE_FMT_S32 ;
 int AV_SAMPLE_FMT_S32P ;
 int AV_SAMPLE_FMT_U8 ;
 int AV_SAMPLE_FMT_U8P ;

__attribute__((used)) static inline enum AVSampleFormat convert_audio_format(enum audio_format format)
{
 switch (format) {
 case 128:
  return AV_SAMPLE_FMT_S16;
 case 130:
  return AV_SAMPLE_FMT_U8;
 case 136:
  return AV_SAMPLE_FMT_S16;
 case 134:
  return AV_SAMPLE_FMT_S32;
 case 132:
  return AV_SAMPLE_FMT_FLT;
 case 129:
  return AV_SAMPLE_FMT_U8P;
 case 135:
  return AV_SAMPLE_FMT_S16P;
 case 133:
  return AV_SAMPLE_FMT_S32P;
 case 131:
  return AV_SAMPLE_FMT_FLTP;
 }


 return AV_SAMPLE_FMT_S16;
}
