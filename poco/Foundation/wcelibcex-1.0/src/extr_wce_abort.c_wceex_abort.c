
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetCurrentProcess () ;
 int TerminateProcess (int ,int ) ;

void wceex_abort(void)
{

    TerminateProcess(GetCurrentProcess(), 0);
}
