
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int (* write_event_handler ) (TYPE_2__*) ;int args; int uri; TYPE_1__* main; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_10__ {TYPE_2__* request; struct TYPE_10__* next; } ;
typedef TYPE_3__ ngx_http_posted_request_t ;
struct TYPE_11__ {int log; TYPE_2__* data; scalar_t__ destroyed; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_8__ {TYPE_3__* posted_requests; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_set_log_request (int ,TYPE_2__*) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int *,int *) ;
 int stub1 (TYPE_2__*) ;

void
ngx_http_run_posted_requests(ngx_connection_t *c)
{
    ngx_http_request_t *r;
    ngx_http_posted_request_t *pr;

    for ( ;; ) {

        if (c->destroyed) {
            return;
        }

        r = c->data;
        pr = r->main->posted_requests;

        if (pr == ((void*)0)) {
            return;
        }

        r->main->posted_requests = pr->next;

        r = pr->request;

        ngx_http_set_log_request(c->log, r);

        ngx_log_debug2(NGX_LOG_DEBUG_HTTP, c->log, 0,
                       "http posted request: \"%V?%V\"", &r->uri, &r->args);

        r->write_event_handler(r);
    }
}
