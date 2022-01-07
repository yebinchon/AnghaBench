
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* file; } ;
struct ffmpeg_mux {TYPE_3__* output; TYPE_1__ params; } ;
struct TYPE_6__ {TYPE_2__* oformat; } ;
struct TYPE_5__ {void* audio_codec; void* video_codec; } ;
typedef int AVOutputFormat ;


 void* AV_CODEC_ID_NONE ;
 int FFM_ERROR ;
 int FFM_SUCCESS ;
 char* av_err2str (int) ;
 int * av_guess_format (int *,char*,int *) ;
 int avformat_alloc_output_context2 (TYPE_3__**,int *,int *,int *) ;
 int fprintf (int ,char*,char*) ;
 int free_avformat (struct ffmpeg_mux*) ;
 int init_streams (struct ffmpeg_mux*) ;
 int open_output_file (struct ffmpeg_mux*) ;
 int stderr ;

__attribute__((used)) static int ffmpeg_mux_init_context(struct ffmpeg_mux *ffm)
{
 AVOutputFormat *output_format;
 int ret;

 output_format = av_guess_format(((void*)0), ffm->params.file, ((void*)0));
 if (output_format == ((void*)0)) {
  fprintf(stderr, "Couldn't find an appropriate muxer for '%s'\n",
   ffm->params.file);
  return FFM_ERROR;
 }

 ret = avformat_alloc_output_context2(&ffm->output, output_format, ((void*)0),
          ((void*)0));
 if (ret < 0) {
  fprintf(stderr, "Couldn't initialize output context: %s\n",
   av_err2str(ret));
  return FFM_ERROR;
 }

 ffm->output->oformat->video_codec = AV_CODEC_ID_NONE;
 ffm->output->oformat->audio_codec = AV_CODEC_ID_NONE;

 if (!init_streams(ffm)) {
  free_avformat(ffm);
  return FFM_ERROR;
 }

 ret = open_output_file(ffm);
 if (ret != FFM_SUCCESS) {
  free_avformat(ffm);
  return ret;
 }

 return FFM_SUCCESS;
}
