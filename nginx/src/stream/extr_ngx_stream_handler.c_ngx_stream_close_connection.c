
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ngx_pool_t ;
struct TYPE_7__ {int * pool; TYPE_1__* ssl; int fd; int log; } ;
typedef TYPE_2__ ngx_connection_t ;
struct TYPE_6__ {void (* handler ) (TYPE_2__*) ;} ;


 scalar_t__ NGX_AGAIN ;
 int NGX_LOG_DEBUG_STREAM ;
 int ngx_atomic_fetch_add (int ,int) ;
 int ngx_close_connection (TYPE_2__*) ;
 int ngx_destroy_pool (int *) ;
 int ngx_log_debug1 (int ,int ,int ,char*,int ) ;
 scalar_t__ ngx_ssl_shutdown (TYPE_2__*) ;
 int ngx_stat_active ;

__attribute__((used)) static void
ngx_stream_close_connection(ngx_connection_t *c)
{
    ngx_pool_t *pool;

    ngx_log_debug1(NGX_LOG_DEBUG_STREAM, c->log, 0,
                   "close stream connection: %d", c->fd);
    pool = c->pool;

    ngx_close_connection(c);

    ngx_destroy_pool(pool);
}
