
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_stream_session_t ;
struct TYPE_4__ {TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_5__ {int * data; } ;
typedef TYPE_2__ ngx_connection_t ;


 int ngx_stream_core_run_phases (int *) ;

void
ngx_stream_session_handler(ngx_event_t *rev)
{
    ngx_connection_t *c;
    ngx_stream_session_t *s;

    c = rev->data;
    s = c->data;

    ngx_stream_core_run_phases(s);
}
