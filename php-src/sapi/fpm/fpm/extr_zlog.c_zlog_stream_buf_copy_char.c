
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; char* data; } ;
struct zlog_stream {int len; TYPE_1__ buf; } ;
typedef int ssize_t ;


 int zlog_stream_buf_alloc_ex (struct zlog_stream*,int) ;

__attribute__((used)) static inline ssize_t zlog_stream_buf_copy_char(struct zlog_stream *stream, char c)
{
 if (stream->buf.size - stream->len < 1 && !zlog_stream_buf_alloc_ex(stream, 1)) {
  return -1;
 }

 stream->buf.data[stream->len++] = c;

 return 1;
}
