
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ffmpeg_data {int vframe; TYPE_2__* vcodec; TYPE_1__* video; } ;
struct TYPE_4__ {scalar_t__ id; } ;
struct TYPE_3__ {int codec; } ;


 scalar_t__ AV_CODEC_ID_A64_MULTI ;
 scalar_t__ AV_CODEC_ID_A64_MULTI5 ;
 int av_frame_free (int *) ;
 int av_frame_unref (int ) ;
 int avcodec_close (int ) ;

__attribute__((used)) static void close_video(struct ffmpeg_data *data)
{
 avcodec_close(data->video->codec);
 av_frame_unref(data->vframe);



 if (data->vcodec->id == AV_CODEC_ID_A64_MULTI ||
     data->vcodec->id == AV_CODEC_ID_A64_MULTI5)
  return;

 av_frame_free(&data->vframe);
}
