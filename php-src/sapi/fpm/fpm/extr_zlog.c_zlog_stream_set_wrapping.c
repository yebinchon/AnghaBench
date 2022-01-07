
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zlog_bool ;
struct zlog_stream {int wrap; } ;



void zlog_stream_set_wrapping(struct zlog_stream *stream, zlog_bool wrap)
{
 stream->wrap = wrap ? 1 : 0;
}
