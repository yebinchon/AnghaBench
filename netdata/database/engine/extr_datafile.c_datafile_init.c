
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uv_file ;
struct rrdengine_instance {int dummy; } ;
struct TYPE_2__ {int * last; int first; } ;
struct rrdengine_datafile {unsigned int tier; unsigned int fileno; struct rrdengine_instance* ctx; int * next; int * journalfile; TYPE_1__ extents; scalar_t__ pos; scalar_t__ file; } ;


 int assert (int) ;

__attribute__((used)) static void datafile_init(struct rrdengine_datafile *datafile, struct rrdengine_instance *ctx,
                          unsigned tier, unsigned fileno)
{
    assert(tier == 1);
    datafile->tier = tier;
    datafile->fileno = fileno;
    datafile->file = (uv_file)0;
    datafile->pos = 0;
    datafile->extents.first = datafile->extents.last = ((void*)0);
    datafile->journalfile = ((void*)0);
    datafile->next = ((void*)0);
    datafile->ctx = ctx;
}
