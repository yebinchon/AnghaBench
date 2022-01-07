
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ready; int available; int (* handler ) (TYPE_2__*) ;scalar_t__ posted; TYPE_3__* data; } ;
typedef TYPE_2__ ngx_event_t ;
struct TYPE_9__ {TYPE_1__* ssl; int log; } ;
typedef TYPE_3__ ngx_connection_t ;
struct TYPE_7__ {int (* next_read_handler ) (TYPE_2__*) ;} ;


 int NGX_LOG_DEBUG_EVENT ;
 int ngx_delete_posted_event (TYPE_2__*) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void
ngx_ssl_next_read_handler(ngx_event_t *rev)
{
    ngx_connection_t *c;

    c = rev->data;

    ngx_log_debug0(NGX_LOG_DEBUG_EVENT, c->log, 0, "SSL next read handler");

    rev->handler = c->ssl->next_read_handler;
    c->ssl->next_read_handler = ((void*)0);

    if (!rev->ready) {
        rev->ready = 1;
        rev->available = -1;
    }

    if (rev->posted) {
        ngx_delete_posted_event(rev);
    }

    rev->handler(rev);
}
