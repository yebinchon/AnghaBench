
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* connection; } ;
typedef TYPE_2__ ngx_rtmp_session_t ;
typedef int ngx_rtmp_delete_stream_t ;
struct TYPE_9__ {scalar_t__ stream; } ;
typedef TYPE_3__ ngx_rtmp_close_stream_t ;
typedef int ngx_int_t ;
struct TYPE_7__ {int log; } ;


 int NGX_LOG_INFO ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_rtmp_close_stream (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_cmd_delete_stream(ngx_rtmp_session_t *s, ngx_rtmp_delete_stream_t *v)
{
    ngx_rtmp_close_stream_t cv;

    ngx_log_error(NGX_LOG_INFO, s->connection->log, 0, "deleteStream");

    cv.stream = 0;

    return ngx_rtmp_close_stream(s, &cv);
}
