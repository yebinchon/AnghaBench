
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlog_stream {int dummy; } ;


 int zlog_stream_init_internal (struct zlog_stream*,int,int,int ) ;

void zlog_stream_init(struct zlog_stream *stream, int flags)
{
 zlog_stream_init_internal(stream, flags, 1024, 0);
}
