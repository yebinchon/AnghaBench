
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct enc_encoder {int audio_size; int audio_planes; TYPE_1__* context; } ;
struct audio_output_info {int speakers; } ;
typedef enum audio_format { ____Placeholder_audio_format } audio_format ;
typedef int audio_t ;
struct TYPE_2__ {int sample_fmt; } ;


 struct audio_output_info* audio_output_get_info (int *) ;
 int convert_ffmpeg_sample_format (int ) ;
 int get_audio_planes (int,int ) ;
 int get_audio_size (int,int ,int) ;

__attribute__((used)) static void init_sizes(struct enc_encoder *enc, audio_t *audio)
{
 const struct audio_output_info *aoi;
 enum audio_format format;

 aoi = audio_output_get_info(audio);
 format = convert_ffmpeg_sample_format(enc->context->sample_fmt);

 enc->audio_planes = get_audio_planes(format, aoi->speakers);
 enc->audio_size = get_audio_size(format, aoi->speakers, 1);
}
