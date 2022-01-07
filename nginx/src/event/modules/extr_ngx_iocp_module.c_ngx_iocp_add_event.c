
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef int ngx_int_t ;
struct TYPE_8__ {int ovlp; int log; scalar_t__ data; } ;
typedef TYPE_3__ ngx_event_t ;
struct TYPE_9__ {int log; scalar_t__ fd; TYPE_1__* write; TYPE_2__* read; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_7__ {int active; } ;
struct TYPE_6__ {int active; } ;
typedef int HANDLE ;


 int * CreateIoCompletionPort (int ,int ,int ,int ) ;
 int NGX_ERROR ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 int NGX_OK ;
 int iocp ;
 int ngx_errno ;
 int ngx_log_debug3 (int ,int ,int ,char*,scalar_t__,int ,int *) ;
 int ngx_log_error (int ,int ,int ,char*) ;

__attribute__((used)) static ngx_int_t
ngx_iocp_add_event(ngx_event_t *ev, ngx_int_t event, ngx_uint_t key)
{
    ngx_connection_t *c;

    c = (ngx_connection_t *) ev->data;

    c->read->active = 1;
    c->write->active = 1;

    ngx_log_debug3(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                   "iocp add: fd:%d k:%ui ov:%p", c->fd, key, &ev->ovlp);

    if (CreateIoCompletionPort((HANDLE) c->fd, iocp, key, 0) == ((void*)0)) {
        ngx_log_error(NGX_LOG_ALERT, c->log, ngx_errno,
                      "CreateIoCompletionPort() failed");
        return NGX_ERROR;
    }

    return NGX_OK;
}
