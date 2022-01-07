
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int (* media_remux_progress_callback ) (void*,float) ;
typedef TYPE_1__* media_remux_job_t ;
struct TYPE_13__ {int * streams; } ;
struct TYPE_12__ {int * streams; } ;
struct TYPE_11__ {float pos; size_t stream_index; } ;
struct TYPE_10__ {TYPE_8__* ofmt_ctx; TYPE_5__* ifmt_ctx; scalar_t__ in_size; } ;
typedef TYPE_2__ AVPacket ;


 int AVERROR_EOF ;
 int LOG_ERROR ;
 int av_err2str (int) ;
 int av_interleaved_write_frame (TYPE_8__*,TYPE_2__*) ;
 int av_packet_unref (TYPE_2__*) ;
 int av_read_frame (TYPE_5__*,TYPE_2__*) ;
 int blog (int ,char*,int ) ;
 int process_packet (TYPE_2__*,int ,int ) ;

__attribute__((used)) static inline int process_packets(media_remux_job_t job,
      media_remux_progress_callback callback,
      void *data)
{
 AVPacket pkt;

 int ret, throttle = 0;
 for (;;) {
  ret = av_read_frame(job->ifmt_ctx, &pkt);
  if (ret < 0) {
   if (ret != AVERROR_EOF)
    blog(LOG_ERROR,
         "media_remux: Error reading"
         " packet: %s",
         av_err2str(ret));
   break;
  }

  if (callback != ((void*)0) && throttle++ > 10) {
   float progress = pkt.pos / (float)job->in_size * 100.f;
   if (!callback(data, progress))
    break;
   throttle = 0;
  }

  process_packet(&pkt, job->ifmt_ctx->streams[pkt.stream_index],
          job->ofmt_ctx->streams[pkt.stream_index]);

  ret = av_interleaved_write_frame(job->ofmt_ctx, &pkt);
  av_packet_unref(&pkt);

  if (ret < 0) {
   blog(LOG_ERROR, "media_remux: Error muxing packet: %s",
        av_err2str(ret));
   break;
  }
 }

 return ret;
}
