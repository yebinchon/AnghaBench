
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ffmpeg_muxer {int total_bytes; } ;



__attribute__((used)) static uint64_t ffmpeg_mux_total_bytes(void *data)
{
 struct ffmpeg_muxer *stream = data;
 return stream->total_bytes;
}
