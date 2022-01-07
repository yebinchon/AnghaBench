
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftl_stream {scalar_t__ min_priority; float congestion; } ;



__attribute__((used)) static float ftl_stream_congestion(void *data)
{
 struct ftl_stream *stream = data;
 return stream->min_priority > 0 ? 1.0f : stream->congestion;
}
