
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MultiXactMemberCtl ;
 int MultiXactOffsetCtl ;
 int SimpleLruFlush (int ,int) ;
 int TRACE_POSTGRESQL_MULTIXACT_CHECKPOINT_DONE (int) ;
 int TRACE_POSTGRESQL_MULTIXACT_CHECKPOINT_START (int) ;

void
CheckPointMultiXact(void)
{
 TRACE_POSTGRESQL_MULTIXACT_CHECKPOINT_START(1);


 SimpleLruFlush(MultiXactOffsetCtl, 1);
 SimpleLruFlush(MultiXactMemberCtl, 1);

 TRACE_POSTGRESQL_MULTIXACT_CHECKPOINT_DONE(1);
}
