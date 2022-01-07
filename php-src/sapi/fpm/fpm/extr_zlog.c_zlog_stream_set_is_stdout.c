
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zlog_bool ;
struct zlog_stream {int is_stdout; } ;



void zlog_stream_set_is_stdout(struct zlog_stream *stream, zlog_bool is_stdout)
{
 stream->is_stdout = is_stdout ? 1 : 0;
}
