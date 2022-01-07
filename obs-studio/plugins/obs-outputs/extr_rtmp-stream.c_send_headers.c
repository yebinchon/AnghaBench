
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtmp_stream {int sent_headers; } ;


 int send_audio_header (struct rtmp_stream*,int ,int*) ;
 int send_video_header (struct rtmp_stream*) ;

__attribute__((used)) static inline bool send_headers(struct rtmp_stream *stream)
{
 stream->sent_headers = 1;
 size_t i = 0;
 bool next = 1;

 if (!send_audio_header(stream, i++, &next))
  return 0;
 if (!send_video_header(stream))
  return 0;

 while (next) {
  if (!send_audio_header(stream, i++, &next))
   return 0;
 }

 return 1;
}
