
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zlog_stream {int dummy; } ;


 size_t strlen (char const*) ;
 int zlog_stream_destroy (struct zlog_stream*) ;
 int zlog_stream_finish (struct zlog_stream*) ;
 int zlog_stream_init_internal (struct zlog_stream*,int,size_t,int ) ;
 int zlog_stream_prefix_ex (struct zlog_stream*,char const*,int) ;
 int zlog_stream_str (struct zlog_stream*,char const*,size_t) ;

void zlog_msg_ex(const char *function, int line, int flags,
  const char *prefix, const char *msg)
{
 struct zlog_stream stream;
 size_t prefix_len = strlen(prefix);
 size_t msg_len = strlen(msg);

 zlog_stream_init_internal(&stream, flags, msg_len + prefix_len, 0);
 zlog_stream_prefix_ex(&stream, function, line);
 zlog_stream_str(&stream, prefix, prefix_len);
 zlog_stream_str(&stream, msg, msg_len);
 zlog_stream_finish(&stream);
 zlog_stream_destroy(&stream);
}
