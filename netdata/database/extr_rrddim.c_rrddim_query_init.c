
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* time_t ;
struct TYPE_4__ {scalar_t__ finished; void* last_slot; void* slot; } ;
struct rrddim_query_handle {TYPE_1__ slotted; void* end_time; void* start_time; TYPE_2__* rd; } ;
struct TYPE_5__ {int rrdset; } ;
typedef TYPE_2__ RRDDIM ;


 void* rrdset_time2slot (int ,void*) ;

__attribute__((used)) static void rrddim_query_init(RRDDIM *rd, struct rrddim_query_handle *handle, time_t start_time, time_t end_time) {
    handle->rd = rd;
    handle->start_time = start_time;
    handle->end_time = end_time;
    handle->slotted.slot = rrdset_time2slot(rd->rrdset, start_time);
    handle->slotted.last_slot = rrdset_time2slot(rd->rrdset, end_time);
    handle->slotted.finished = 0;
}
