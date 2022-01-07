
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TransactionId ;
struct TYPE_3__ {int new_prune_xid; } ;
typedef TYPE_1__ PruneState ;


 int Assert (int ) ;
 int TransactionIdIsNormal (int ) ;
 int TransactionIdIsValid (int ) ;
 scalar_t__ TransactionIdPrecedes (int ,int ) ;

__attribute__((used)) static void
heap_prune_record_prunable(PruneState *prstate, TransactionId xid)
{




 Assert(TransactionIdIsNormal(xid));
 if (!TransactionIdIsValid(prstate->new_prune_xid) ||
  TransactionIdPrecedes(xid, prstate->new_prune_xid))
  prstate->new_prune_xid = xid;
}
