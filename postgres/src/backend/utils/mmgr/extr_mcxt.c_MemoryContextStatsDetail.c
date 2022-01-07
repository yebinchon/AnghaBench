
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int grand_totals ;
struct TYPE_4__ {scalar_t__ freespace; scalar_t__ totalspace; int freechunks; int nblocks; } ;
typedef TYPE_1__ MemoryContextCounters ;
typedef int MemoryContext ;


 int MemoryContextStatsInternal (int ,int ,int,int,TYPE_1__*) ;
 int fprintf (int ,char*,scalar_t__,int ,scalar_t__,int ,scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;
 int stderr ;

void
MemoryContextStatsDetail(MemoryContext context, int max_children)
{
 MemoryContextCounters grand_totals;

 memset(&grand_totals, 0, sizeof(grand_totals));

 MemoryContextStatsInternal(context, 0, 1, max_children, &grand_totals);

 fprintf(stderr,
   "Grand total: %zu bytes in %zd blocks; %zu free (%zd chunks); %zu used\n",
   grand_totals.totalspace, grand_totals.nblocks,
   grand_totals.freespace, grand_totals.freechunks,
   grand_totals.totalspace - grand_totals.freespace);
}
