
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {scalar_t__ tv_usec; } ;
typedef int ngx_int_t ;
typedef int ngx_cycle_t ;


 int NGX_OK ;
 int ngx_gettimeofday (struct timeval*) ;
 int ngx_pid ;
 int start_value ;

__attribute__((used)) static ngx_int_t
ngx_http_userid_init_worker(ngx_cycle_t *cycle)
{
    struct timeval tp;

    ngx_gettimeofday(&tp);


    start_value = (((uint32_t) tp.tv_usec / 20) << 16) | ngx_pid;

    return NGX_OK;
}
