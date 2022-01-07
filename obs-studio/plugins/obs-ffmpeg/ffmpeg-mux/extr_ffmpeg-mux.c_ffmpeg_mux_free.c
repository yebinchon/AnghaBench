
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tracks; } ;
struct ffmpeg_mux {int * audio; int * audio_header; TYPE_1__ params; int video_header; int output; scalar_t__ initialized; } ;


 int av_write_trailer (int ) ;
 int free (int *) ;
 int free_avformat (struct ffmpeg_mux*) ;
 int header_free (int *) ;
 int memset (struct ffmpeg_mux*,int ,int) ;

__attribute__((used)) static void ffmpeg_mux_free(struct ffmpeg_mux *ffm)
{
 if (ffm->initialized) {
  av_write_trailer(ffm->output);
 }

 free_avformat(ffm);

 header_free(&ffm->video_header);

 if (ffm->audio_header) {
  for (int i = 0; i < ffm->params.tracks; i++) {
   header_free(&ffm->audio_header[i]);
  }

  free(ffm->audio_header);
 }

 if (ffm->audio) {
  free(ffm->audio);
 }

 memset(ffm, 0, sizeof(*ffm));
}
