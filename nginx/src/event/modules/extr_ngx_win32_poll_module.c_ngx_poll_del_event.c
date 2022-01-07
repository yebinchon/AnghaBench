
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_uint_t ;
typedef scalar_t__ ngx_socket_t ;
typedef size_t ngx_int_t ;
struct TYPE_6__ {size_t index; int log; scalar_t__ active; TYPE_2__* data; } ;
typedef TYPE_1__ ngx_event_t ;
struct TYPE_7__ {size_t fd; TYPE_1__* write; TYPE_1__* read; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_8__ {short events; } ;


 size_t NGX_INVALID_INDEX ;
 int NGX_LOG_ALERT ;
 int NGX_LOG_DEBUG_EVENT ;
 size_t NGX_OK ;
 size_t NGX_READ_EVENT ;
 size_t POLLIN ;
 size_t POLLOUT ;
 TYPE_2__** event_index ;
 TYPE_4__* event_list ;
 size_t nevents ;
 int ngx_log_debug1 (int ,int ,int ,char*,size_t) ;
 int ngx_log_debug2 (int ,int ,int ,char*,size_t,size_t) ;
 int ngx_log_error (int ,int ,int ,char*,...) ;

__attribute__((used)) static ngx_int_t
ngx_poll_del_event(ngx_event_t *ev, ngx_int_t event, ngx_uint_t flags)
{
    ngx_event_t *e;
    ngx_connection_t *c;

    c = ev->data;

    ev->active = 0;

    if (ev->index == NGX_INVALID_INDEX) {
        ngx_log_error(NGX_LOG_ALERT, ev->log, 0,
                      "poll event fd:%d ev:%i is already deleted",
                      c->fd, event);
        return NGX_OK;
    }

    if (event == NGX_READ_EVENT) {
        e = c->write;




    } else {
        e = c->read;



    }

    ngx_log_debug2(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                   "poll del event: fd:%d ev:%i", c->fd, event);

    if (e == ((void*)0) || e->index == NGX_INVALID_INDEX) {
        nevents--;

        if (ev->index < nevents) {

            ngx_log_debug2(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                           "index: copy event %ui to %i", nevents, ev->index);

            event_list[ev->index] = event_list[nevents];
            event_index[ev->index] = event_index[nevents];

            c = event_index[ev->index];

            if (c->fd == (ngx_socket_t) -1) {
                ngx_log_error(NGX_LOG_ALERT, ev->log, 0,
                              "unexpected last event");

            } else {
                if (c->read->index == nevents) {
                    c->read->index = ev->index;
                }

                if (c->write->index == nevents) {
                    c->write->index = ev->index;
                }
            }
        }

    } else {
        ngx_log_debug1(NGX_LOG_DEBUG_EVENT, ev->log, 0,
                       "poll del index: %i", e->index);

        event_list[e->index].events &= (short) ~event;
    }

    ev->index = NGX_INVALID_INDEX;

    return NGX_OK;
}
