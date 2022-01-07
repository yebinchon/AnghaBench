
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zlog_bool ;
struct zlog_stream {int finished; scalar_t__ len; scalar_t__ decorate; scalar_t__ use_buffer; } ;


 int ZLOG_TRUE ;
 int zlog_stream_buf_flush (struct zlog_stream*) ;
 int zlog_stream_direct_write (struct zlog_stream*,char*,int) ;
 int zlog_stream_finish_buffer_suffix (struct zlog_stream*) ;
 int zlog_stream_finish_direct_suffix (struct zlog_stream*) ;

zlog_bool zlog_stream_finish(struct zlog_stream *stream)
{
 if (stream->finished || stream->len == 0) {
  return ZLOG_TRUE;
 }

 if (stream->use_buffer) {
  if (stream->decorate) {
   zlog_stream_finish_buffer_suffix(stream);
  }
  zlog_stream_buf_flush(stream);
 } else {
  if (stream->decorate) {
   zlog_stream_finish_direct_suffix(stream);
  } else {
   zlog_stream_direct_write(stream, "\n", 1);
  }
 }
 stream->finished = 1;

 return ZLOG_TRUE;
}
