
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct rrdengine_instance* data; } ;
typedef TYPE_3__ uv_work_t ;
struct TYPE_6__ {struct rrdengine_datafile* first; } ;
struct rrdengine_instance {TYPE_2__ datafiles; } ;
struct TYPE_5__ {struct extent_info* first; } ;
struct rrdengine_datafile {TYPE_1__ extents; } ;
struct rrdeng_page_descr {int dummy; } ;
struct extent_info {unsigned int number_of_pages; struct extent_info* next; struct rrdeng_page_descr** pages; } ;


 int freez (struct extent_info*) ;
 int pg_cache_punch_hole (struct rrdengine_instance*,struct rrdeng_page_descr*,int ) ;

__attribute__((used)) static void delete_old_data(uv_work_t *req)
{
    struct rrdengine_instance *ctx = req->data;
    struct rrdengine_datafile *datafile;
    struct extent_info *extent, *next;
    struct rrdeng_page_descr *descr;
    unsigned count, i;


    datafile = ctx->datafiles.first;

    for (extent = datafile->extents.first ; extent != ((void*)0) ; extent = next) {
        count = extent->number_of_pages;
        for (i = 0 ; i < count ; ++i) {
            descr = extent->pages[i];
            pg_cache_punch_hole(ctx, descr, 0);
        }
        next = extent->next;
        freez(extent);
    }
}
