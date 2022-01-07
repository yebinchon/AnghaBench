
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_12__ {int mutex; } ;
typedef TYPE_3__ ngx_slab_pool_t ;
struct TYPE_10__ {scalar_t__ addr; } ;
struct TYPE_13__ {scalar_t__* data; TYPE_1__ shm; } ;
typedef TYPE_4__ ngx_shm_zone_t ;
struct TYPE_14__ {TYPE_2__* connection; } ;
typedef TYPE_5__ ngx_rtmp_session_t ;
struct TYPE_15__ {scalar_t__ max_conn; TYPE_4__* shm_zone; } ;
typedef TYPE_6__ ngx_rtmp_limit_main_conf_t ;
typedef int ngx_rtmp_header_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_chain_t ;
struct TYPE_11__ {int log; } ;


 scalar_t__ NGX_CONF_UNSET ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_DEBUG_RTMP ;
 int NGX_LOG_ERR ;
 scalar_t__ NGX_OK ;
 int ngx_log_debug1 (int ,int ,int ,char*,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,scalar_t__,scalar_t__) ;
 TYPE_6__* ngx_rtmp_get_module_main_conf (TYPE_5__*,int ) ;
 int ngx_rtmp_limit_module ;
 int ngx_shmtx_lock (int *) ;
 int ngx_shmtx_unlock (int *) ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_limit_connect(ngx_rtmp_session_t *s, ngx_rtmp_header_t *h,
    ngx_chain_t *in)
{
    ngx_rtmp_limit_main_conf_t *lmcf;
    ngx_slab_pool_t *shpool;
    ngx_shm_zone_t *shm_zone;
    uint32_t *nconn, n;
    ngx_int_t rc;

    lmcf = ngx_rtmp_get_module_main_conf(s, ngx_rtmp_limit_module);
    if (lmcf->max_conn == NGX_CONF_UNSET) {
        return NGX_OK;
    }

    shm_zone = lmcf->shm_zone;
    shpool = (ngx_slab_pool_t *) shm_zone->shm.addr;
    nconn = shm_zone->data;

    ngx_shmtx_lock(&shpool->mutex);
    n = ++*nconn;
    ngx_shmtx_unlock(&shpool->mutex);

    rc = n > (ngx_uint_t) lmcf->max_conn ? NGX_ERROR : NGX_OK;

    ngx_log_debug1(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                   "limit: inc conection counter: %uD", n);

    if (rc != NGX_OK) {
        ngx_log_error(NGX_LOG_ERR, s->connection->log, 0,
                      "limit: too many connections: %uD > %i",
                      n, lmcf->max_conn);
    }

    return rc;
}
