
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ngx_pool_t ;
struct TYPE_4__ {int * pool; int log; } ;
typedef TYPE_1__ ngx_connection_t ;


 int NGX_LOG_DEBUG_RTMP ;
 int ngx_atomic_fetch_add (int ,int) ;
 int ngx_close_connection (TYPE_1__*) ;
 int ngx_destroy_pool (int *) ;
 int ngx_log_debug0 (int ,int ,int ,char*) ;
 int ngx_stat_active ;

__attribute__((used)) static void
ngx_rtmp_close_connection(ngx_connection_t *c)
{
    ngx_pool_t *pool;

    ngx_log_debug0(NGX_LOG_DEBUG_RTMP, c->log, 0, "close connection");





    pool = c->pool;
    ngx_close_connection(c);
    ngx_destroy_pool(pool);
}
