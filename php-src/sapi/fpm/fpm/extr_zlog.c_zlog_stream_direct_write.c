
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlog_stream {int dummy; } ;
typedef int ssize_t ;


 int zlog_stream_direct_write_ex (struct zlog_stream*,char const*,size_t,int *,int ) ;

__attribute__((used)) static ssize_t zlog_stream_direct_write(
  struct zlog_stream *stream, const char *buf, size_t len)
{
 return zlog_stream_direct_write_ex(stream, buf, len, ((void*)0), 0);
}
