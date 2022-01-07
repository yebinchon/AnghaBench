
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlog_bool ;
struct zlog_stream {int dummy; } ;


 int zlog_stream_destroy (struct zlog_stream*) ;
 int zlog_stream_finish (struct zlog_stream*) ;

zlog_bool zlog_stream_close(struct zlog_stream *stream)
{
 zlog_bool finished = zlog_stream_finish(stream);
 zlog_stream_destroy(stream);

 return finished;
}
