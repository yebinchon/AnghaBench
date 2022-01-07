
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DestNone ;
 scalar_t__ DestRemote ;
 int abort () ;
 int proc_exit (int ) ;
 scalar_t__ whereToSendOutput ;

__attribute__((used)) static void
WalSndShutdown(void)
{




 if (whereToSendOutput == DestRemote)
  whereToSendOutput = DestNone;

 proc_exit(0);
 abort();
}
