
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rrdeng_page_descr {scalar_t__ start_time; scalar_t__ end_time; int page_length; } ;
typedef int storage_number ;


 scalar_t__ INVALID_TIME ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int metrics_with_known_interval(struct rrdeng_page_descr *descr)
{
    unsigned page_entries;

    if (unlikely(INVALID_TIME == descr->start_time || INVALID_TIME == descr->end_time))
        return 0;
    page_entries = descr->page_length / sizeof(storage_number);
    if (likely(page_entries > 1)) {
        return 1;
    }
    return 0;
}
