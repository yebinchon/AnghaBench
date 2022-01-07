
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ngx_log_t ;
typedef int ngx_int_t ;


 int NGX_OK ;
 int ngx_event_timer_rbtree ;
 int ngx_event_timer_sentinel ;
 int ngx_rbtree_init (int *,int *,int ) ;
 int ngx_rbtree_insert_timer_value ;

ngx_int_t
ngx_event_timer_init(ngx_log_t *log)
{
    ngx_rbtree_init(&ngx_event_timer_rbtree, &ngx_event_timer_sentinel,
                    ngx_rbtree_insert_timer_value);

    return NGX_OK;
}
