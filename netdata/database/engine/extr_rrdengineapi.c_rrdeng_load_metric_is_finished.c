
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrdeng_query_handle {scalar_t__ next_page_time; } ;
struct rrddim_query_handle {struct rrdeng_query_handle rrdeng; } ;


 scalar_t__ INVALID_TIME ;

int rrdeng_load_metric_is_finished(struct rrddim_query_handle *rrdimm_handle)
{
    struct rrdeng_query_handle *handle;

    handle = &rrdimm_handle->rrdeng;
    return (INVALID_TIME == handle->next_page_time);
}
