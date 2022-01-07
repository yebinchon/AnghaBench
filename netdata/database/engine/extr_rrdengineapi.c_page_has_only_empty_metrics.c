
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct rrdeng_page_descr {int page_length; TYPE_1__* pg_cache_descr; } ;
typedef scalar_t__ storage_number ;
struct TYPE_2__ {scalar_t__* page; } ;


 scalar_t__ SN_EMPTY_SLOT ;

__attribute__((used)) static int page_has_only_empty_metrics(struct rrdeng_page_descr *descr)
{
    unsigned i;
    uint8_t has_only_empty_metrics = 1;
    storage_number *page;

    page = descr->pg_cache_descr->page;
    for (i = 0 ; i < descr->page_length / sizeof(storage_number); ++i) {
        if (SN_EMPTY_SLOT != page[i]) {
            has_only_empty_metrics = 0;
            break;
        }
    }
    return has_only_empty_metrics;
}
