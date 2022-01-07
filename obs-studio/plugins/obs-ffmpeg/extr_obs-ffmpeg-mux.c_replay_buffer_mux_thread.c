
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t num; struct encoder_packet* array; } ;
struct TYPE_3__ {int array; } ;
struct ffmpeg_muxer {int muxing; TYPE_2__ mux_packets; int * pipe; TYPE_1__ path; } ;
struct encoder_packet {int dummy; } ;


 int da_free (TYPE_2__) ;
 int info (char*,int ) ;
 int obs_encoder_packet_release (struct encoder_packet*) ;
 int os_atomic_set_bool (int *,int) ;
 int os_process_pipe_destroy (int *) ;
 int send_headers (struct ffmpeg_muxer*) ;
 int start_pipe (struct ffmpeg_muxer*,int ) ;
 int warn (char*,...) ;
 int write_packet (struct ffmpeg_muxer*,struct encoder_packet*) ;

__attribute__((used)) static void *replay_buffer_mux_thread(void *data)
{
 struct ffmpeg_muxer *stream = data;

 start_pipe(stream, stream->path.array);

 if (!stream->pipe) {
  warn("Failed to create process pipe");
  goto error;
 }

 if (!send_headers(stream)) {
  warn("Could not write headers for file '%s'",
       stream->path.array);
  goto error;
 }

 for (size_t i = 0; i < stream->mux_packets.num; i++) {
  struct encoder_packet *pkt = &stream->mux_packets.array[i];
  write_packet(stream, pkt);
  obs_encoder_packet_release(pkt);
 }

 info("Wrote replay buffer to '%s'", stream->path.array);

error:
 os_process_pipe_destroy(stream->pipe);
 stream->pipe = ((void*)0);
 da_free(stream->mux_packets);
 os_atomic_set_bool(&stream->muxing, 0);
 return ((void*)0);
}
