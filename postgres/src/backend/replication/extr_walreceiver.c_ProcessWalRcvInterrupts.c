
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHECK_FOR_INTERRUPTS () ;
 int ERRCODE_ADMIN_SHUTDOWN ;
 int FATAL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 scalar_t__ got_SIGTERM ;

void
ProcessWalRcvInterrupts(void)
{





 CHECK_FOR_INTERRUPTS();

 if (got_SIGTERM)
 {
  ereport(FATAL,
    (errcode(ERRCODE_ADMIN_SHUTDOWN),
     errmsg("terminating walreceiver process due to administrator command")));
 }
}
