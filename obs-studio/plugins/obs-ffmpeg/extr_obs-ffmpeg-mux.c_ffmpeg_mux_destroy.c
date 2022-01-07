
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {int path; int pipe; int mux_packets; int mux_thread; scalar_t__ mux_thread_joinable; } ;


 int bfree (struct ffmpeg_muxer*) ;
 int da_free (int ) ;
 int dstr_free (int *) ;
 int os_process_pipe_destroy (int ) ;
 int pthread_join (int ,int *) ;
 int replay_buffer_clear (struct ffmpeg_muxer*) ;

__attribute__((used)) static void ffmpeg_mux_destroy(void *data)
{
 struct ffmpeg_muxer *stream = data;

 replay_buffer_clear(stream);
 if (stream->mux_thread_joinable)
  pthread_join(stream->mux_thread, ((void*)0));
 da_free(stream->mux_packets);

 os_process_pipe_destroy(stream->pipe);
 dstr_free(&stream->path);
 bfree(stream);
}
