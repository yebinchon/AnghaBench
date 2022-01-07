
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * BackendPidGetProc (int) ;

bool
IsBackendPid(int pid)
{
 return (BackendPidGetProc(pid) != ((void*)0));
}
