
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_11__ {scalar_t__ status; } ;
struct TYPE_13__ {scalar_t__ write_event_handler; int * posted_requests; TYPE_2__* connection; scalar_t__ blocked; int count; TYPE_5__* cleanup; TYPE_1__ headers_out; struct TYPE_13__* main; } ;
typedef TYPE_3__ ngx_http_request_t ;
struct TYPE_14__ {int terminal_posted_request; } ;
typedef TYPE_4__ ngx_http_ephemeral_t ;
struct TYPE_15__ {struct TYPE_15__* next; int data; int (* handler ) (int ) ;} ;
typedef TYPE_5__ ngx_http_cleanup_t ;
struct TYPE_12__ {scalar_t__ sent; int error; int log; } ;


 int NGX_LOG_DEBUG_HTTP ;
 int ngx_http_close_request (TYPE_3__*,scalar_t__) ;
 TYPE_4__* ngx_http_ephemeral (TYPE_3__*) ;
 int ngx_http_post_request (TYPE_3__*,int *) ;
 scalar_t__ ngx_http_request_finalizer ;
 scalar_t__ ngx_http_terminate_handler ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 int ngx_log_debug2 (int ,int ,int ,char*,int ,scalar_t__) ;
 int stub1 (int ) ;

__attribute__((used)) static void
ngx_http_terminate_request(ngx_http_request_t *r, ngx_int_t rc)
{
    ngx_http_cleanup_t *cln;
    ngx_http_request_t *mr;
    ngx_http_ephemeral_t *e;

    mr = r->main;

    ngx_log_debug1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http terminate request count:%d", mr->count);

    if (rc > 0 && (mr->headers_out.status == 0 || mr->connection->sent == 0)) {
        mr->headers_out.status = rc;
    }

    cln = mr->cleanup;
    mr->cleanup = ((void*)0);

    while (cln) {
        if (cln->handler) {
            cln->handler(cln->data);
        }

        cln = cln->next;
    }

    ngx_log_debug2(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                   "http terminate cleanup count:%d blk:%d",
                   mr->count, mr->blocked);

    if (mr->write_event_handler) {

        if (mr->blocked) {
            r->connection->error = 1;
            r->write_event_handler = ngx_http_request_finalizer;
            return;
        }

        e = ngx_http_ephemeral(mr);
        mr->posted_requests = ((void*)0);
        mr->write_event_handler = ngx_http_terminate_handler;
        (void) ngx_http_post_request(mr, &e->terminal_posted_request);
        return;
    }

    ngx_http_close_request(mr, rc);
}
