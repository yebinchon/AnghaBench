
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct extstore_stats {int page_data; } ;
struct extstore_page_data {int dummy; } ;
struct TYPE_5__ {int page_data; } ;
struct TYPE_6__ {int page_count; TYPE_1__ stats; } ;
typedef TYPE_2__ store_engine ;


 int STAT_L (TYPE_2__*) ;
 int STAT_UL (TYPE_2__*) ;
 int memcpy (int ,int ,int) ;

void extstore_get_page_data(void *ptr, struct extstore_stats *st) {
    store_engine *e = (store_engine *)ptr;
    STAT_L(e);
    memcpy(st->page_data, e->stats.page_data,
            sizeof(struct extstore_page_data) * e->page_count);
    STAT_UL(e);
}
