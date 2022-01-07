
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ngx_int_t ;
struct TYPE_12__ {TYPE_1__* connection; int write_event_handler; scalar_t__ discard_body; int read_event_handler; int http_state; } ;
typedef TYPE_2__ ngx_http_request_t ;
struct TYPE_13__ {int send_lowat; int send_timeout; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
struct TYPE_14__ {scalar_t__ delayed; scalar_t__ ready; } ;
typedef TYPE_4__ ngx_event_t ;
struct TYPE_11__ {TYPE_4__* write; } ;


 scalar_t__ NGX_ERROR ;
 int NGX_HTTP_WRITING_REQUEST_STATE ;
 scalar_t__ NGX_OK ;
 int ngx_add_timer (TYPE_4__*,int ) ;
 scalar_t__ ngx_handle_write_event (TYPE_4__*,int ) ;
 int ngx_http_close_request (TYPE_2__*,int ) ;
 int ngx_http_core_module ;
 int ngx_http_discarded_request_body_handler ;
 TYPE_3__* ngx_http_get_module_loc_conf (TYPE_2__*,int ) ;
 int ngx_http_test_reading ;
 int ngx_http_writer ;

__attribute__((used)) static ngx_int_t
ngx_http_set_write_handler(ngx_http_request_t *r)
{
    ngx_event_t *wev;
    ngx_http_core_loc_conf_t *clcf;

    r->http_state = NGX_HTTP_WRITING_REQUEST_STATE;

    r->read_event_handler = r->discard_body ?
                                ngx_http_discarded_request_body_handler:
                                ngx_http_test_reading;
    r->write_event_handler = ngx_http_writer;

    wev = r->connection->write;

    if (wev->ready && wev->delayed) {
        return NGX_OK;
    }

    clcf = ngx_http_get_module_loc_conf(r, ngx_http_core_module);
    if (!wev->delayed) {
        ngx_add_timer(wev, clcf->send_timeout);
    }

    if (ngx_handle_write_event(wev, clcf->send_lowat) != NGX_OK) {
        ngx_http_close_request(r, 0);
        return NGX_ERROR;
    }

    return NGX_OK;
}
