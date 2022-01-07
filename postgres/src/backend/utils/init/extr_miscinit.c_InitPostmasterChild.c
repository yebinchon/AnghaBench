
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL ;
 int InitLatch (int *) ;
 int InitProcessGlobals () ;
 int InitializeLatchSupport () ;
 int IsUnderPostmaster ;
 int LocalLatchData ;
 int * MyLatch ;
 int PostmasterDeathSignalInit () ;
 int _O_BINARY ;
 int _setmode (int ,int ) ;
 int elog (int ,char*) ;
 int fileno (int ) ;
 int on_exit_reset () ;
 scalar_t__ setsid () ;
 int stderr ;

void
InitPostmasterChild(void)
{
 IsUnderPostmaster = 1;

 InitProcessGlobals();
 on_exit_reset();


 InitializeLatchSupport();
 MyLatch = &LocalLatchData;
 InitLatch(MyLatch);
 PostmasterDeathSignalInit();
}
