
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int (* get_audio_info ) (int ,struct audio_convert_info*) ;} ;
struct obs_encoder {TYPE_2__ context; TYPE_1__ info; int media; } ;
struct audio_output_info {int speakers; int samples_per_sec; int format; } ;
struct audio_convert_info {int speakers; int samples_per_sec; int format; } ;


 int AUDIO_FORMAT_UNKNOWN ;
 int SPEAKERS_UNKNOWN ;
 struct audio_output_info* audio_output_get_info (int ) ;
 int stub1 (int ,struct audio_convert_info*) ;

__attribute__((used)) static inline void get_audio_info(const struct obs_encoder *encoder,
      struct audio_convert_info *info)
{
 const struct audio_output_info *aoi;
 aoi = audio_output_get_info(encoder->media);

 if (info->format == AUDIO_FORMAT_UNKNOWN)
  info->format = aoi->format;
 if (!info->samples_per_sec)
  info->samples_per_sec = aoi->samples_per_sec;
 if (info->speakers == SPEAKERS_UNKNOWN)
  info->speakers = aoi->speakers;

 if (encoder->info.get_audio_info)
  encoder->info.get_audio_info(encoder->context.data, info);
}
