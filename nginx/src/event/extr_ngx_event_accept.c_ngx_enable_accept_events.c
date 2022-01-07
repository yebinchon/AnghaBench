
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_8__ {TYPE_4__* connection; } ;
typedef TYPE_2__ ngx_listening_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_7__ {size_t nelts; TYPE_2__* elts; } ;
struct TYPE_9__ {TYPE_1__ listening; } ;
typedef TYPE_3__ ngx_cycle_t ;
struct TYPE_10__ {TYPE_6__* read; } ;
typedef TYPE_4__ ngx_connection_t ;
struct TYPE_11__ {scalar_t__ active; } ;


 scalar_t__ NGX_ERROR ;
 scalar_t__ NGX_OK ;
 int NGX_READ_EVENT ;
 scalar_t__ ngx_add_event (TYPE_6__*,int ,int ) ;

ngx_int_t
ngx_enable_accept_events(ngx_cycle_t *cycle)
{
    ngx_uint_t i;
    ngx_listening_t *ls;
    ngx_connection_t *c;

    ls = cycle->listening.elts;
    for (i = 0; i < cycle->listening.nelts; i++) {

        c = ls[i].connection;

        if (c == ((void*)0) || c->read->active) {
            continue;
        }

        if (ngx_add_event(c->read, NGX_READ_EVENT, 0) == NGX_ERROR) {
            return NGX_ERROR;
        }
    }

    return NGX_OK;
}
