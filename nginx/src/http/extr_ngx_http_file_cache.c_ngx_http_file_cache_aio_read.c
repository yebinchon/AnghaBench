
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_17__ {int aio; int pool; TYPE_2__* main; } ;
typedef TYPE_4__ ngx_http_request_t ;
struct TYPE_18__ {scalar_t__ aio; } ;
typedef TYPE_5__ ngx_http_core_loc_conf_t ;
struct TYPE_20__ {int thread_task; TYPE_4__* thread_ctx; int thread_handler; TYPE_1__* aio; } ;
struct TYPE_19__ {int reading; int body_start; TYPE_3__* buf; TYPE_7__ file; int thread_task; } ;
typedef TYPE_6__ ngx_http_cache_t ;
struct TYPE_16__ {int pos; } ;
struct TYPE_15__ {int blocked; } ;
struct TYPE_14__ {int handler; TYPE_4__* data; } ;


 scalar_t__ NGX_AGAIN ;
 scalar_t__ NGX_HTTP_AIO_ON ;
 scalar_t__ NGX_HTTP_AIO_THREADS ;
 scalar_t__ ngx_file_aio ;
 scalar_t__ ngx_file_aio_read (TYPE_7__*,int ,int ,int ,int ) ;
 int ngx_http_cache_aio_event_handler ;
 int ngx_http_cache_thread_handler ;
 int ngx_http_core_module ;
 TYPE_5__* ngx_http_get_module_loc_conf (TYPE_4__*,int ) ;
 scalar_t__ ngx_read_file (TYPE_7__*,int ,int ,int ) ;
 scalar_t__ ngx_thread_read (TYPE_7__*,int ,int ,int ,int ) ;

__attribute__((used)) static ssize_t
ngx_http_file_cache_aio_read(ngx_http_request_t *r, ngx_http_cache_t *c)
{
    return ngx_read_file(&c->file, c->buf->pos, c->body_start, 0);
}
