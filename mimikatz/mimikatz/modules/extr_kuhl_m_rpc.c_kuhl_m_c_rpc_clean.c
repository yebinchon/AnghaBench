
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NTSTATUS ;


 int DeleteCriticalSection (int *) ;
 int RpcMgmtStopServerListening (int *) ;
 int STATUS_SUCCESS ;
 int kuhl_m_rpc_close (int ,int *) ;
 int outputCritical ;

NTSTATUS kuhl_m_c_rpc_clean()
{
 DeleteCriticalSection(&outputCritical);
 kuhl_m_rpc_close(0, ((void*)0));
 RpcMgmtStopServerListening(((void*)0));
 return STATUS_SUCCESS;
}
