
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int usec_t ;
typedef unsigned int uint64_t ;
typedef int uint32_t ;
typedef int time_t ;
struct TYPE_4__ {int metric_API_consumers; } ;
struct rrdengine_instance {TYPE_1__ stats; } ;
struct rrdeng_query_handle {int next_page_time; int position; int now; struct rrdeng_page_descr* descr; TYPE_3__* page_index; struct rrdengine_instance* ctx; } ;
struct rrdeng_page_descr {int start_time; TYPE_2__* pg_cache_descr; } ;
struct rrddim_query_handle {int end_time; struct rrdeng_query_handle rrdeng; } ;
typedef int storage_number ;
struct TYPE_6__ {int id; } ;
struct TYPE_5__ {int * page; } ;


 int INVALID_TIME ;
 int SN_EMPTY_SLOT ;
 int USEC_PER_SEC ;
 int pg_cache_atomic_get_pg_info (struct rrdeng_page_descr*,int*,int*) ;
 struct rrdeng_page_descr* pg_cache_lookup_next (struct rrdengine_instance*,TYPE_3__*,int *,int,int) ;
 int pg_cache_put (struct rrdengine_instance*,struct rrdeng_page_descr*) ;
 int rrd_stat_atomic_add (int *,int) ;
 scalar_t__ unlikely (int) ;

storage_number rrdeng_load_metric_next(struct rrddim_query_handle *rrdimm_handle, time_t *current_time)
{
    struct rrdeng_query_handle *handle;
    struct rrdengine_instance *ctx;
    struct rrdeng_page_descr *descr;
    storage_number *page, ret;
    unsigned position, entries;
    usec_t next_page_time, current_position_time, page_end_time;
    uint32_t page_length;

    handle = &rrdimm_handle->rrdeng;
    if (unlikely(INVALID_TIME == handle->next_page_time)) {
        return SN_EMPTY_SLOT;
    }
    ctx = handle->ctx;
    if (unlikely(((void*)0) == (descr = handle->descr))) {

        next_page_time = handle->next_page_time * USEC_PER_SEC;
    } else {
        pg_cache_atomic_get_pg_info(descr, &page_end_time, &page_length);
    }
    position = handle->position + 1;

    if (unlikely(((void*)0) == descr ||
                 position >= (page_length / sizeof(storage_number)))) {

        if (descr) {

            handle->next_page_time = (page_end_time / USEC_PER_SEC) + 1;
            if (unlikely(handle->next_page_time > rrdimm_handle->end_time)) {
                goto no_more_metrics;
            }
            next_page_time = handle->next_page_time * USEC_PER_SEC;



            pg_cache_put(ctx, descr);
            handle->descr = ((void*)0);
        }
        descr = pg_cache_lookup_next(ctx, handle->page_index, &handle->page_index->id,
                                     next_page_time, rrdimm_handle->end_time * USEC_PER_SEC);
        if (((void*)0) == descr) {
            goto no_more_metrics;
        }



        handle->descr = descr;
        pg_cache_atomic_get_pg_info(descr, &page_end_time, &page_length);
        if (unlikely(INVALID_TIME == descr->start_time ||
                     INVALID_TIME == page_end_time)) {
            goto no_more_metrics;
        }
        if (unlikely(descr->start_time != page_end_time && next_page_time > descr->start_time)) {

            entries = page_length / sizeof(storage_number);
            position = ((uint64_t)(next_page_time - descr->start_time)) * (entries - 1) /
                       (page_end_time - descr->start_time);
        } else {
            position = 0;
        }
    }
    page = descr->pg_cache_descr->page;
    ret = page[position];
    entries = page_length / sizeof(storage_number);
    if (entries > 1) {
        usec_t dt;

        dt = (page_end_time - descr->start_time) / (entries - 1);
        current_position_time = descr->start_time + position * dt;
    } else {
        current_position_time = descr->start_time;
    }
    handle->position = position;
    handle->now = current_position_time / USEC_PER_SEC;


    if (unlikely(handle->now >= rrdimm_handle->end_time)) {

        handle->next_page_time = INVALID_TIME;
    }
    *current_time = handle->now;
    return ret;

no_more_metrics:
    handle->next_page_time = INVALID_TIME;
    return SN_EMPTY_SLOT;
}
