
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log; int data; } ;
typedef TYPE_1__ ngx_event_t ;


 int NGX_LOG_DEBUG_EVENT ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_stream_log_flush (int ,int ) ;

__attribute__((used)) static void
ngx_stream_log_flush_handler(ngx_event_t *ev)
{
    ngx_log_debug0(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                   "stream log buffer flush handler");

    ngx_stream_log_flush(ev->data, ev->log);
}
