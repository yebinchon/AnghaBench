
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ff_demuxer {int abort; scalar_t__ format_context; int * video_decoder; int * audio_decoder; struct ff_demuxer* input_format; struct ff_demuxer* input; int demuxer_thread; } ;


 int av_free (struct ff_demuxer*) ;
 int avformat_close_input (scalar_t__*) ;
 int ff_decoder_free (int *) ;
 int pthread_join (int ,void**) ;

void ff_demuxer_free(struct ff_demuxer *demuxer)
{
 void *demuxer_thread_result;

 demuxer->abort = 1;

 pthread_join(demuxer->demuxer_thread, &demuxer_thread_result);

 if (demuxer->input != ((void*)0))
  av_free(demuxer->input);

 if (demuxer->input_format != ((void*)0))
  av_free(demuxer->input_format);

 if (demuxer->audio_decoder != ((void*)0))
  ff_decoder_free(demuxer->audio_decoder);

 if (demuxer->video_decoder != ((void*)0))
  ff_decoder_free(demuxer->video_decoder);

 if (demuxer->format_context)
  avformat_close_input(&demuxer->format_context);

 av_free(demuxer);
}
