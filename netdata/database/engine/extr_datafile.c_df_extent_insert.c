
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct extent_info* last; struct extent_info* first; } ;
struct rrdengine_datafile {TYPE_1__ extents; } ;
struct extent_info {struct extent_info* next; struct rrdengine_datafile* datafile; } ;


 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

void df_extent_insert(struct extent_info *extent)
{
    struct rrdengine_datafile *datafile = extent->datafile;

    if (likely(((void*)0) != datafile->extents.last)) {
        datafile->extents.last->next = extent;
    }
    if (unlikely(((void*)0) == datafile->extents.first)) {
        datafile->extents.first = extent;
    }
    datafile->extents.last = extent;
}
