
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connect_time_ms; } ;
struct rtmp_stream {TYPE_1__ rtmp; } ;



__attribute__((used)) static int rtmp_stream_connect_time(void *data)
{
 struct rtmp_stream *stream = data;
 return stream->rtmp.connect_time_ms;
}
