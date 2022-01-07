
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int latestRemovedXid; } ;
struct TYPE_6__ {int rd_node; } ;
typedef TYPE_1__* Relation ;
typedef TYPE_2__ LVRelStats ;


 int RelationNeedsWAL (TYPE_1__*) ;
 scalar_t__ TransactionIdIsValid (int ) ;
 int XLogIsNeeded () ;
 int log_heap_cleanup_info (int ,int ) ;

__attribute__((used)) static void
vacuum_log_cleanup_info(Relation rel, LVRelStats *vacrelstats)
{




 if (!RelationNeedsWAL(rel) || !XLogIsNeeded())
  return;




 if (TransactionIdIsValid(vacrelstats->latestRemovedXid))
  (void) log_heap_cleanup_info(rel->rd_node, vacrelstats->latestRemovedXid);
}
