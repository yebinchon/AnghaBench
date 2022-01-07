
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_2__ {int node; int remote_end; int local_end; } ;
typedef TYPE_1__ FlushPosition ;


 int ApplyContext ;
 int ApplyMessageContext ;
 int MemoryContextSwitchTo (int ) ;
 int XactLastCommitEnd ;
 int dlist_push_tail (int *,int *) ;
 int lsn_mapping ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
store_flush_position(XLogRecPtr remote_lsn)
{
 FlushPosition *flushpos;


 MemoryContextSwitchTo(ApplyContext);


 flushpos = (FlushPosition *) palloc(sizeof(FlushPosition));
 flushpos->local_end = XactLastCommitEnd;
 flushpos->remote_end = remote_lsn;

 dlist_push_tail(&lsn_mapping, &flushpos->node);
 MemoryContextSwitchTo(ApplyMessageContext);
}
