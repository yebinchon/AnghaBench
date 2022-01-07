
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_stream {int dropped_frames; } ;



__attribute__((used)) static int rtmp_stream_dropped_frames(void *data)
{
 struct rtmp_stream *stream = data;
 return stream->dropped_frames;
}
