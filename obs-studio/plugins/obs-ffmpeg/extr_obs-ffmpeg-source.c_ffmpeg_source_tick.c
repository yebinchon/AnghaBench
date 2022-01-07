
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_source {int destroy_media; int media_valid; int media; } ;


 int UNUSED_PARAMETER (float) ;
 int mp_media_free (int *) ;

__attribute__((used)) static void ffmpeg_source_tick(void *data, float seconds)
{
 UNUSED_PARAMETER(seconds);

 struct ffmpeg_source *s = data;
 if (s->destroy_media) {
  if (s->media_valid) {
   mp_media_free(&s->media);
   s->media_valid = 0;
  }
  s->destroy_media = 0;
 }
}
