
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
ShutdownMultiXact(void)
{

 TRACE_POSTGRESQL_MULTIXACT_CHECKPOINT_START(0);
 SimpleLruFlush(MultiXactOffsetCtl, 0);
 SimpleLruFlush(MultiXactMemberCtl, 0);
 TRACE_POSTGRESQL_MULTIXACT_CHECKPOINT_DONE(0);
}
