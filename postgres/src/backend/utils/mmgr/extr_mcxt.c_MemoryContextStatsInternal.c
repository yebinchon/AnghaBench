
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int local_totals ;
struct TYPE_12__ {struct TYPE_12__* nextchild; struct TYPE_12__* firstchild; TYPE_1__* methods; } ;
struct TYPE_11__ {scalar_t__ freespace; scalar_t__ totalspace; scalar_t__ freechunks; scalar_t__ nblocks; } ;
struct TYPE_10__ {int (* stats ) (TYPE_3__*,int *,void*,TYPE_2__*) ;} ;
typedef TYPE_2__ MemoryContextCounters ;
typedef TYPE_3__* MemoryContext ;


 int AssertArg (int ) ;
 int MemoryContextIsValid (TYPE_3__*) ;
 int * MemoryContextStatsPrint ;
 int fprintf (int ,char*,...) ;
 int memset (TYPE_2__*,int ,int) ;
 int stderr ;
 int stub1 (TYPE_3__*,int *,void*,TYPE_2__*) ;

__attribute__((used)) static void
MemoryContextStatsInternal(MemoryContext context, int level,
         bool print, int max_children,
         MemoryContextCounters *totals)
{
 MemoryContextCounters local_totals;
 MemoryContext child;
 int ichild;

 AssertArg(MemoryContextIsValid(context));


 context->methods->stats(context,
       print ? MemoryContextStatsPrint : ((void*)0),
       (void *) &level,
       totals);





 memset(&local_totals, 0, sizeof(local_totals));

 for (child = context->firstchild, ichild = 0;
   child != ((void*)0);
   child = child->nextchild, ichild++)
 {
  if (ichild < max_children)
   MemoryContextStatsInternal(child, level + 1,
            print, max_children,
            totals);
  else
   MemoryContextStatsInternal(child, level + 1,
            0, max_children,
            &local_totals);
 }


 if (ichild > max_children)
 {
  if (print)
  {
   int i;

   for (i = 0; i <= level; i++)
    fprintf(stderr, "  ");
   fprintf(stderr,
     "%d more child contexts containing %zu total in %zd blocks; %zu free (%zd chunks); %zu used\n",
     ichild - max_children,
     local_totals.totalspace,
     local_totals.nblocks,
     local_totals.freespace,
     local_totals.freechunks,
     local_totals.totalspace - local_totals.freespace);
  }

  if (totals)
  {
   totals->nblocks += local_totals.nblocks;
   totals->freechunks += local_totals.freechunks;
   totals->totalspace += local_totals.totalspace;
   totals->freespace += local_totals.freespace;
  }
 }
}
