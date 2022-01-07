
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ intl_end; int bandwidth; int intl_bytes; int bytes; } ;
typedef TYPE_1__ ngx_rtmp_bandwidth_t ;
struct TYPE_5__ {scalar_t__ sec; } ;


 int NGX_RTMP_BANDWIDTH_INTERVAL ;
 TYPE_3__* ngx_cached_time ;

void
ngx_rtmp_update_bandwidth(ngx_rtmp_bandwidth_t *bw, uint32_t bytes)
{
    if (ngx_cached_time->sec > bw->intl_end) {
        bw->bandwidth = ngx_cached_time->sec >
            bw->intl_end + NGX_RTMP_BANDWIDTH_INTERVAL
            ? 0
            : bw->intl_bytes / NGX_RTMP_BANDWIDTH_INTERVAL;
        bw->intl_bytes = 0;
        bw->intl_end = ngx_cached_time->sec + NGX_RTMP_BANDWIDTH_INTERVAL;
    }

    bw->bytes += bytes;
    bw->intl_bytes += bytes;
}
