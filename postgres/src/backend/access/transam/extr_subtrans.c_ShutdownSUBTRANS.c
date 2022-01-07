
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SimpleLruFlush (int ,int) ;
 int SubTransCtl ;
 int TRACE_POSTGRESQL_SUBTRANS_CHECKPOINT_DONE (int) ;
 int TRACE_POSTGRESQL_SUBTRANS_CHECKPOINT_START (int) ;

void
ShutdownSUBTRANS(void)
{






 TRACE_POSTGRESQL_SUBTRANS_CHECKPOINT_START(0);
 SimpleLruFlush(SubTransCtl, 0);
 TRACE_POSTGRESQL_SUBTRANS_CHECKPOINT_DONE(0);
}
