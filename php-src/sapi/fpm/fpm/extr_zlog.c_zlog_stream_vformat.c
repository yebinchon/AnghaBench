
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct zlog_stream {int dummy; } ;
typedef int ssize_t ;


 size_t vsnprintf (char*,int,char const*,int ) ;
 int zlog_stream_str (struct zlog_stream*,char*,size_t) ;

ssize_t zlog_stream_vformat(struct zlog_stream *stream, const char *fmt, va_list args)
{
 char sbuf[1024];
 size_t len;

 len = vsnprintf(sbuf, 1024, fmt, args);

 return zlog_stream_str(stream, sbuf, len);
}
