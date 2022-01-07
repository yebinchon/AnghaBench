
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int timeout; int * out; } ;
typedef TYPE_1__ ngx_rtmp_netcall_session_t ;
struct TYPE_12__ {scalar_t__ timer_set; scalar_t__ timedout; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_13__ {int timedout; int read; int * (* send_chain ) (TYPE_3__*,int *,int ) ;int log; scalar_t__ destroyed; TYPE_1__* data; } ;
typedef TYPE_3__ ngx_connection_t ;
typedef int ngx_chain_t ;


 int * NGX_CHAIN_ERROR ;
 int NGX_ETIMEDOUT ;
 int NGX_LOG_INFO ;
 scalar_t__ NGX_OK ;
 int NGX_WRITE_EVENT ;
 int ngx_add_timer (TYPE_2__*,int ) ;
 int ngx_del_event (TYPE_2__*,int ,int ) ;
 int ngx_del_timer (TYPE_2__*) ;
 scalar_t__ ngx_handle_write_event (TYPE_2__*,int ) ;
 int ngx_log_error (int ,int ,int ,char*) ;
 int ngx_rtmp_netcall_close (TYPE_3__*) ;
 int ngx_rtmp_netcall_recv (int ) ;
 int * stub1 (TYPE_3__*,int *,int ) ;

__attribute__((used)) static void
ngx_rtmp_netcall_send(ngx_event_t *wev)
{
    ngx_rtmp_netcall_session_t *cs;
    ngx_connection_t *cc;
    ngx_chain_t *cl;

    cc = wev->data;
    cs = cc->data;

    if (cc->destroyed) {
        return;
    }

    if (wev->timedout) {
        ngx_log_error(NGX_LOG_INFO, cc->log, NGX_ETIMEDOUT,
                "netcall: client send timed out");
        cc->timedout = 1;
        ngx_rtmp_netcall_close(cc);
        return;
    }

    if (wev->timer_set) {
        ngx_del_timer(wev);
    }

    cl = cc->send_chain(cc, cs->out, 0);

    if (cl == NGX_CHAIN_ERROR) {
        ngx_rtmp_netcall_close(cc);
        return;
    }

    cs->out = cl;


    if (cl) {
        ngx_add_timer(wev, cs->timeout);
        if (ngx_handle_write_event(wev, 0) != NGX_OK) {
            ngx_rtmp_netcall_close(cc);
        }
        return;
    }



    ngx_del_event(wev, NGX_WRITE_EVENT, 0);

    ngx_rtmp_netcall_recv(cc->read);
}
