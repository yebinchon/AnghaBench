
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;
struct zlog_stream {int flags; scalar_t__ len; TYPE_1__ buf; scalar_t__ prefix_len; scalar_t__ use_syslog; } ;
typedef int ssize_t ;


 int ZLOG_LEVEL_MASK ;
 int external_logger (int,scalar_t__,scalar_t__) ;
 int php_syslog (int ,char*,scalar_t__) ;
 int * syslog_priorities ;
 size_t zlog_level ;
 int zlog_stream_buf_copy_char (struct zlog_stream*,char) ;
 int zlog_stream_direct_write (struct zlog_stream*,scalar_t__,scalar_t__) ;

__attribute__((used)) static ssize_t zlog_stream_buf_flush(struct zlog_stream *stream)
{
 ssize_t written;
 if (external_logger != ((void*)0)) {
  external_logger(stream->flags & ZLOG_LEVEL_MASK,
    stream->buf.data + stream->prefix_len, stream->len - stream->prefix_len);
 }
 zlog_stream_buf_copy_char(stream, '\n');
 written = zlog_stream_direct_write(stream, stream->buf.data, stream->len);
 stream->len = 0;

 return written;
}
