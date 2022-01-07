
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftl_stream {scalar_t__ dropped_frames; } ;



__attribute__((used)) static int ftl_stream_dropped_frames(void *data)
{
 struct ftl_stream *stream = data;
 return (int)stream->dropped_frames;
}
