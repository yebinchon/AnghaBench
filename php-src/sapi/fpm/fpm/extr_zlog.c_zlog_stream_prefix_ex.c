
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* data; int size; } ;
struct zlog_stream {char const* function; int line; size_t len; size_t prefix_len; char* msg_prefix; int msg_prefix_len; scalar_t__ msg_quote; int use_syslog; int flags; TYPE_1__ buf; scalar_t__ use_buffer; scalar_t__ wrap; int prefix_buffer; } ;
typedef int ssize_t ;


 size_t zlog_buf_prefix (char const*,int,int ,char*,int,int ) ;
 int zlog_stream_buf_alloc (struct zlog_stream*) ;
 int zlog_stream_buf_copy_char (struct zlog_stream*,char) ;
 int zlog_stream_buf_copy_cstr (struct zlog_stream*,char*,int) ;
 int zlog_stream_direct_write (struct zlog_stream*,char*,int) ;

ssize_t zlog_stream_prefix_ex(struct zlog_stream *stream, const char *function, int line)
{
 size_t len;

 if (!stream->prefix_buffer) {
  return 0;
 }
 if (stream->wrap && stream->function == ((void*)0)) {
  stream->function = function;
  stream->line = line;
 }

 if (stream->use_buffer) {
  if (!zlog_stream_buf_alloc(stream)) {
   return -1;
  }
  len = zlog_buf_prefix(
    function, line, stream->flags,
    stream->buf.data, stream->buf.size, stream->use_syslog);
  stream->len = stream->prefix_len = len;
  if (stream->msg_prefix != ((void*)0)) {
   zlog_stream_buf_copy_cstr(stream, stream->msg_prefix, stream->msg_prefix_len);
  }
  if (stream->msg_quote) {
   zlog_stream_buf_copy_char(stream, '"');
  }
  return stream->len;
 } else {
  char sbuf[1024];
  ssize_t written;
  len = zlog_buf_prefix(function, line, stream->flags, sbuf, 1024, stream->use_syslog);
  written = zlog_stream_direct_write(stream, sbuf, len);
  if (stream->msg_prefix != ((void*)0)) {
   written += zlog_stream_direct_write(
     stream, stream->msg_prefix, stream->msg_prefix_len);
  }
  if (stream->msg_quote) {
   written += zlog_stream_direct_write(stream, "\"", 1);
  }
  return written;
 }
}
