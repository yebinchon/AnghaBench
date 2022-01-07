
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct TYPE_3__ {int (* get_frame_size ) (int ) ;} ;
struct obs_encoder {int blocksize; int framesize; int framesize_bytes; TYPE_2__ context; TYPE_1__ info; int planes; int samplerate; } ;
struct audio_convert_info {int speakers; int format; int samples_per_sec; int member_0; } ;


 int get_audio_info (struct obs_encoder*,struct audio_convert_info*) ;
 int get_audio_planes (int ,int ) ;
 int get_audio_size (int ,int ,int) ;
 int reset_audio_buffers (struct obs_encoder*) ;
 int stub1 (int ) ;

__attribute__((used)) static void intitialize_audio_encoder(struct obs_encoder *encoder)
{
 struct audio_convert_info info = {0};
 get_audio_info(encoder, &info);

 encoder->samplerate = info.samples_per_sec;
 encoder->planes = get_audio_planes(info.format, info.speakers);
 encoder->blocksize = get_audio_size(info.format, info.speakers, 1);
 encoder->framesize =
  encoder->info.get_frame_size(encoder->context.data);

 encoder->framesize_bytes = encoder->blocksize * encoder->framesize;
 reset_audio_buffers(encoder);
}
