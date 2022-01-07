
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_rtmp_stream_begin_t ;
struct TYPE_7__ {TYPE_1__* connection; scalar_t__ auto_pushed; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_int_t ;
struct TYPE_6__ {int log; } ;


 int NGX_LOG_DEBUG_RTMP ;
 int next_stream_eof (TYPE_2__*,int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_rtmp_record_stop (TYPE_2__*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_record_stream_eof(ngx_rtmp_session_t *s, ngx_rtmp_stream_begin_t *v)
{
    if (s->auto_pushed) {
        goto next;
    }

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "record: stream_eof");

    ngx_rtmp_record_stop(s);

next:
    return next_stream_eof(s, v);
}
