
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ffmpeg_decode {scalar_t__ packet_buffer; scalar_t__ frame; scalar_t__ decoder; scalar_t__ hw_frame; } ;


 int av_free (scalar_t__) ;
 int avcodec_close (scalar_t__) ;
 int bfree (scalar_t__) ;
 int memset (struct ffmpeg_decode*,int ,int) ;

void ffmpeg_decode_free(struct ffmpeg_decode *decode)
{
 if (decode->hw_frame)
  av_free(decode->hw_frame);

 if (decode->decoder) {
  avcodec_close(decode->decoder);
  av_free(decode->decoder);
 }

 if (decode->frame)
  av_free(decode->frame);

 if (decode->packet_buffer)
  bfree(decode->packet_buffer);

 memset(decode, 0, sizeof(*decode));
}
