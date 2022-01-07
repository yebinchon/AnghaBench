
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct rrdengine_datafile* first; struct rrdengine_datafile* last; } ;
struct rrdengine_instance {TYPE_1__ datafiles; } ;
struct rrdengine_datafile {struct rrdengine_datafile* next; } ;


 int assert (int) ;

void datafile_list_delete(struct rrdengine_instance *ctx, struct rrdengine_datafile *datafile)
{
    struct rrdengine_datafile *next;

    next = datafile->next;
    assert((((void*)0) != next) && (ctx->datafiles.first == datafile) && (ctx->datafiles.last != datafile));
    ctx->datafiles.first = next;
}
