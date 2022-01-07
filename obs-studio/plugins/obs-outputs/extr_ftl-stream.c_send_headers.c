
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftl_stream {int sent_headers; } ;
typedef int int64_t ;


 int send_video_header (struct ftl_stream*,int ) ;

__attribute__((used)) static inline bool send_headers(struct ftl_stream *stream, int64_t dts_usec)
{
 stream->sent_headers = 1;

 if (!send_video_header(stream, dts_usec))
  return 0;

 return 1;
}
