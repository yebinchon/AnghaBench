
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrdeng_page_descr {int * pg_cache_descr; scalar_t__ pg_cache_descr_state; int * extent; int * id; void* end_time; void* start_time; scalar_t__ page_length; } ;


 void* INVALID_TIME ;
 struct rrdeng_page_descr* mallocz (int) ;

struct rrdeng_page_descr *pg_cache_create_descr(void)
{
    struct rrdeng_page_descr *descr;

    descr = mallocz(sizeof(*descr));
    descr->page_length = 0;
    descr->start_time = INVALID_TIME;
    descr->end_time = INVALID_TIME;
    descr->id = ((void*)0);
    descr->extent = ((void*)0);
    descr->pg_cache_descr_state = 0;
    descr->pg_cache_descr = ((void*)0);

    return descr;
}
