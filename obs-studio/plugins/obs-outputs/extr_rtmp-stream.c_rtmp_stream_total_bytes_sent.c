
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct rtmp_stream {int total_bytes_sent; } ;



__attribute__((used)) static uint64_t rtmp_stream_total_bytes_sent(void *data)
{
 struct rtmp_stream *stream = data;
 return stream->total_bytes_sent;
}
