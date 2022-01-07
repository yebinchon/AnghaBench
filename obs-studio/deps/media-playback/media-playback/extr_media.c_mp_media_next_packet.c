
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct mp_decode {int dummy; } ;
struct TYPE_12__ {int fmt; } ;
typedef TYPE_1__ mp_media_t ;
struct TYPE_13__ {scalar_t__ size; } ;
typedef TYPE_2__ AVPacket ;


 int AVERROR_EOF ;
 int LOG_WARNING ;
 int av_err2str (int) ;
 int av_init_packet (TYPE_2__*) ;
 int av_packet_ref (TYPE_2__*,TYPE_2__*) ;
 int av_packet_unref (TYPE_2__*) ;
 int av_read_frame (int ,TYPE_2__*) ;
 int blog (int ,char*,int ,int) ;
 struct mp_decode* get_packet_decoder (TYPE_1__*,TYPE_2__*) ;
 int mp_decode_push_packet (struct mp_decode*,TYPE_2__*) ;

__attribute__((used)) static int mp_media_next_packet(mp_media_t *media)
{
 AVPacket new_pkt;
 AVPacket pkt;
 av_init_packet(&pkt);
 new_pkt = pkt;

 int ret = av_read_frame(media->fmt, &pkt);
 if (ret < 0) {
  if (ret != AVERROR_EOF)
   blog(LOG_WARNING, "MP: av_read_frame failed: %s (%d)",
        av_err2str(ret), ret);
  return ret;
 }

 struct mp_decode *d = get_packet_decoder(media, &pkt);
 if (d && pkt.size) {
  av_packet_ref(&new_pkt, &pkt);
  mp_decode_push_packet(d, &new_pkt);
 }

 av_packet_unref(&pkt);
 return ret;
}
