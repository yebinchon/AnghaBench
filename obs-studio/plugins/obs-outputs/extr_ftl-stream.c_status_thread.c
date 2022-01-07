
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ftl_stream {scalar_t__ last_nack_count; int status_thread; int dropped_frames; int ftl_handle; } ;
struct TYPE_11__ {scalar_t__ queue_fullness; float period; int max_frame_size; scalar_t__ bytes_sent; scalar_t__ frames_sent; scalar_t__ bytes_queued; scalar_t__ frames_queued; } ;
typedef TYPE_3__ ftl_video_frame_stats_msg_t ;
typedef scalar_t__ ftl_status_t ;
struct TYPE_14__ {int avg_rtt; int max_rtt; int min_rtt; int max_xmit_delay; int min_xmit_delay; int avg_xmit_delay; } ;
struct TYPE_13__ {scalar_t__ nack_reqs; float period; scalar_t__ sent; } ;
struct TYPE_9__ {int string; int log_level; } ;
struct TYPE_10__ {TYPE_3__ video_stats; TYPE_6__ ipkt_stats; TYPE_5__ pkt_stats; TYPE_1__ log; } ;
struct TYPE_12__ {int type; TYPE_2__ msg; } ;
typedef TYPE_4__ ftl_status_msg_t ;
typedef TYPE_5__ ftl_packet_stats_msg_t ;
typedef TYPE_6__ ftl_packet_stats_instant_msg_t ;
typedef enum ret_type { ____Placeholder_ret_type } ret_type ;


 scalar_t__ FTL_NOT_INITIALIZED ;
 scalar_t__ FTL_QUEUE_EMPTY ;
 int FTL_STATUS_EVENT ;
 int FTL_STATUS_LOG ;
 scalar_t__ FTL_STATUS_TIMEOUT ;
 int FTL_STATUS_VIDEO ;
 int FTL_STATUS_VIDEO_PACKETS ;
 int FTL_STATUS_VIDEO_PACKETS_INSTANT ;
 int LOG_DEBUG ;
 int LOG_INFO ;
 int RET_BREAK ;
 int RET_EXIT ;
 int blog (int,char*,...) ;
 int disconnected (struct ftl_stream*) ;
 int ftl_event (struct ftl_stream*,TYPE_4__) ;
 scalar_t__ ftl_ingest_get_status (int *,TYPE_4__*,int) ;
 int pthread_detach (int ) ;

__attribute__((used)) static void *status_thread(void *data)
{
 struct ftl_stream *stream = data;

 ftl_status_msg_t status;
 ftl_status_t status_code;

 while (!disconnected(stream)) {
  status_code = ftl_ingest_get_status(&stream->ftl_handle,
          &status, 1000);

  if (status_code == FTL_STATUS_TIMEOUT ||
      status_code == FTL_QUEUE_EMPTY) {
   continue;
  } else if (status_code == FTL_NOT_INITIALIZED) {
   break;
  }

  if (status.type == FTL_STATUS_EVENT) {
   enum ret_type ret_type = ftl_event(stream, status);
   if (ret_type == RET_EXIT)
    return ((void*)0);
   else if (ret_type == RET_BREAK)
    break;

  } else if (status.type == FTL_STATUS_LOG) {
   blog(LOG_INFO, "[%d] %s", status.msg.log.log_level,
        status.msg.log.string);

  } else if (status.type == FTL_STATUS_VIDEO_PACKETS) {
   ftl_packet_stats_msg_t *p = &status.msg.pkt_stats;


   stream->dropped_frames +=
    p->nack_reqs - stream->last_nack_count;
   stream->last_nack_count = p->nack_reqs;

   int log_level = p->nack_reqs > 0 ? LOG_INFO : LOG_DEBUG;

   blog(log_level,
        "Avg packet send per second %3.1f, "
        "total nack requests %d",
        (float)p->sent * 1000.f / p->period,
        (int)p->nack_reqs);

  } else if (status.type == FTL_STATUS_VIDEO_PACKETS_INSTANT) {
   ftl_packet_stats_instant_msg_t *p =
    &status.msg.ipkt_stats;

   int log_level = p->avg_rtt > 20 ? LOG_INFO : LOG_DEBUG;

   blog(log_level,
        "avg transmit delay %dms "
        "(min: %d, max: %d), "
        "avg rtt %dms (min: %d, max: %d)",
        p->avg_xmit_delay, p->min_xmit_delay,
        p->max_xmit_delay, p->avg_rtt, p->min_rtt,
        p->max_rtt);

  } else if (status.type == FTL_STATUS_VIDEO) {
   ftl_video_frame_stats_msg_t *v =
    &status.msg.video_stats;

   int log_level = v->queue_fullness > 0 ? LOG_INFO
             : LOG_DEBUG;

   blog(log_level,
        "Queue an average of %3.2f fps "
        "(%3.1f kbps), "
        "sent an average of %3.2f fps "
        "(%3.1f kbps), "
        "queue fullness %d, "
        "max frame size %d",
        (float)v->frames_queued * 1000.f / v->period,
        (float)v->bytes_queued / v->period * 8,
        (float)v->frames_sent * 1000.f / v->period,
        (float)v->bytes_sent / v->period * 8,
        v->queue_fullness, v->max_frame_size);
  } else {
   blog(LOG_DEBUG,
        "Status:  Got Status message of type "
        "%d",
        status.type);
  }
 }

 blog(LOG_DEBUG, "status_thread:  Exited");
 pthread_detach(stream->status_thread);
 return ((void*)0);
}
