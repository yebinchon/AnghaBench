
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int FALSE ;
 int InitializeCriticalSection (int *) ;
 int STATUS_SUCCESS ;
 int * clientKey ;
 int * hBinding ;
 int * hMimi ;
 int isFinish ;
 int outputCritical ;

NTSTATUS kuhl_m_c_rpc_init()
{
 hMimi = ((void*)0);
 hBinding = ((void*)0);
 clientKey = ((void*)0);
 isFinish = FALSE;
 InitializeCriticalSection(&outputCritical);
 return STATUS_SUCCESS;
}
