
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_int_t ;
typedef int ngx_cycle_t ;


 int NGX_OK ;
 int ngx_event_process_posted (int *,int *) ;
 int ngx_rtmp_init_queue ;

__attribute__((used)) static ngx_int_t
ngx_rtmp_stat_init_process(ngx_cycle_t *cycle)
{






    ngx_event_process_posted(cycle, &ngx_rtmp_init_queue);

    return NGX_OK;
}
