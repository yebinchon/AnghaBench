
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zlog_bool ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ data; } ;
struct zlog_stream {int buf_init_size; TYPE_1__ buf; } ;


 scalar_t__ MIN (int ,int ) ;
 int zlog_limit ;
 int zlog_stream_buf_alloc_ex (struct zlog_stream*,int ) ;

__attribute__((used)) inline static zlog_bool zlog_stream_buf_alloc(struct zlog_stream *stream)
{

 if (stream->buf.data && stream->buf.size >= MIN(zlog_limit, stream->buf_init_size)) {
  return 1;
 }
 return zlog_stream_buf_alloc_ex(stream, 0);
}
