
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_source {struct ffmpeg_source* input_format; struct ffmpeg_source* input; struct ffmpeg_source* sws_data; int * sws_ctx; int media; scalar_t__ media_valid; scalar_t__ hotkey; } ;


 int bfree (struct ffmpeg_source*) ;
 int mp_media_free (int *) ;
 int obs_hotkey_unregister (scalar_t__) ;
 int sws_freeContext (int *) ;

__attribute__((used)) static void ffmpeg_source_destroy(void *data)
{
 struct ffmpeg_source *s = data;

 if (s->hotkey)
  obs_hotkey_unregister(s->hotkey);
 if (s->media_valid)
  mp_media_free(&s->media);

 if (s->sws_ctx != ((void*)0))
  sws_freeContext(s->sws_ctx);
 bfree(s->sws_data);
 bfree(s->input);
 bfree(s->input_format);
 bfree(s);
}
