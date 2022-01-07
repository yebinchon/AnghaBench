
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct ffmpeg_mux {int output; } ;
struct ffm_packet_info {scalar_t__ keyframe; int dts; int pts; scalar_t__ size; } ;
struct TYPE_4__ {int size; int stream_index; int flags; void* dts; void* pts; int * data; int member_0; } ;
typedef TYPE_1__ AVPacket ;


 int AV_PKT_FLAG_KEY ;
 int av_init_packet (TYPE_1__*) ;
 scalar_t__ av_interleaved_write_frame (int ,TYPE_1__*) ;
 int get_index (struct ffmpeg_mux*,struct ffm_packet_info*) ;
 void* rescale_ts (struct ffmpeg_mux*,int ,int) ;

__attribute__((used)) static inline bool ffmpeg_mux_packet(struct ffmpeg_mux *ffm, uint8_t *buf,
         struct ffm_packet_info *info)
{
 int idx = get_index(ffm, info);
 AVPacket packet = {0};


 if (idx == -1) {
  return 1;
 }

 av_init_packet(&packet);

 packet.data = buf;
 packet.size = (int)info->size;
 packet.stream_index = idx;
 packet.pts = rescale_ts(ffm, info->pts, idx);
 packet.dts = rescale_ts(ffm, info->dts, idx);

 if (info->keyframe)
  packet.flags = AV_PKT_FLAG_KEY;

 return av_interleaved_write_frame(ffm->output, &packet) >= 0;
}
