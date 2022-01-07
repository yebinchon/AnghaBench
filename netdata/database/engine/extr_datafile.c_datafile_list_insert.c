
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct rrdengine_datafile* last; struct rrdengine_datafile* first; } ;
struct rrdengine_instance {TYPE_1__ datafiles; } ;
struct rrdengine_datafile {struct rrdengine_datafile* next; } ;


 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

void datafile_list_insert(struct rrdengine_instance *ctx, struct rrdengine_datafile *datafile)
{
    if (likely(((void*)0) != ctx->datafiles.last)) {
        ctx->datafiles.last->next = datafile;
    }
    if (unlikely(((void*)0) == ctx->datafiles.first)) {
        ctx->datafiles.first = datafile;
    }
    ctx->datafiles.last = datafile;
}
