
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlog_stream {scalar_t__ use_buffer; scalar_t__ full; scalar_t__ len; scalar_t__ finished; } ;
typedef int ssize_t ;


 int zlog_stream_buf_append (struct zlog_stream*,char const*,size_t) ;
 int zlog_stream_unbuffered_write (struct zlog_stream*,char const*,size_t) ;

ssize_t zlog_stream_str(struct zlog_stream *stream, const char *str, size_t str_len)
{

 if (stream->finished) {
  stream->finished = 0;
  stream->len = 0;
  stream->full = 0;
 } else if (stream->full) {

  return 0;
 }

 if (stream->use_buffer) {
  return zlog_stream_buf_append(stream, str, str_len);
 }

 return zlog_stream_unbuffered_write(stream, str, str_len);
}
