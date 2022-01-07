
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ngx_int_t ;
typedef int ngx_conf_t ;
struct TYPE_2__ {int sec; } ;


 int NGX_OK ;
 TYPE_1__* ngx_cached_time ;
 int start_time ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_stat_postconfiguration(ngx_conf_t *cf)
{
    start_time = ngx_cached_time->sec;

    return NGX_OK;
}
