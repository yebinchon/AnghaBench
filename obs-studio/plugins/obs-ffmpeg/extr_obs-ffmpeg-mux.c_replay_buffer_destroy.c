
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_muxer {scalar_t__ hotkey; } ;


 int ffmpeg_mux_destroy (void*) ;
 int obs_hotkey_unregister (scalar_t__) ;

__attribute__((used)) static void replay_buffer_destroy(void *data)
{
 struct ffmpeg_muxer *stream = data;
 if (stream->hotkey)
  obs_hotkey_unregister(stream->hotkey);
 ffmpeg_mux_destroy(data);
}
