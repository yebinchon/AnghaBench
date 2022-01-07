
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int Exec_UnlistenAllCommit () ;
 int asyncQueueUnregister () ;

__attribute__((used)) static void
Async_UnlistenOnExit(int code, Datum arg)
{
 Exec_UnlistenAllCommit();
 asyncQueueUnregister();
}
