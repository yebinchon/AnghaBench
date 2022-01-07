
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ftl_stream {int output; } ;
struct TYPE_5__ {scalar_t__ type; scalar_t__ reason; int error_code; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
struct TYPE_7__ {TYPE_2__ msg; } ;
typedef TYPE_3__ ftl_status_msg_t ;
typedef enum ret_type { ____Placeholder_ret_type } ret_type ;


 scalar_t__ FTL_STATUS_EVENT_REASON_API_REQUEST ;
 scalar_t__ FTL_STATUS_EVENT_TYPE_DISCONNECTED ;
 int LOG_WARNING ;
 int OBS_OUTPUT_DISCONNECTED ;
 int RET_BREAK ;
 int RET_CONTINUE ;
 int RET_EXIT ;
 int blog (int ,char*) ;
 int ftl_status_code_to_string (int ) ;
 int info (char*,int ) ;
 int obs_output_signal_stop (int ,int ) ;

__attribute__((used)) static enum ret_type ftl_event(struct ftl_stream *stream,
          ftl_status_msg_t status)
{
 if (status.msg.event.type != FTL_STATUS_EVENT_TYPE_DISCONNECTED)
  return RET_CONTINUE;

 info("Disconnected from ingest with reason: %s",
      ftl_status_code_to_string(status.msg.event.error_code));

 if (status.msg.event.reason == FTL_STATUS_EVENT_REASON_API_REQUEST) {
  return RET_BREAK;
 }


 blog(LOG_WARNING, "Reconnecting to Ingest");
 obs_output_signal_stop(stream->output, OBS_OUTPUT_DISCONNECTED);
 return RET_EXIT;
}
