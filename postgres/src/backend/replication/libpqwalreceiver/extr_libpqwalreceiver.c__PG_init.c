
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int PQWalReceiverFunctions ;
 int * WalReceiverFunctions ;
 int elog (int ,char*) ;

void
_PG_init(void)
{
 if (WalReceiverFunctions != ((void*)0))
  elog(ERROR, "libpqwalreceiver already loaded");
 WalReceiverFunctions = &PQWalReceiverFunctions;
}
