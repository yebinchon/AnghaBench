
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RPC_STATUS ;
typedef int RPC_BINDING_VECTOR ;
typedef scalar_t__ NTSTATUS ;


 int PRINT_ERROR (char*,scalar_t__) ;
 scalar_t__ RPC_S_OK ;
 int RpcBindingVectorFree (int **) ;
 scalar_t__ RpcEpUnregister (int ,int *,int *) ;
 scalar_t__ RpcMgmtStopServerListening (int *) ;
 int RpcMgmtWaitServerListen () ;
 scalar_t__ RpcServerInqBindings (int **) ;
 scalar_t__ RpcServerUnregisterIfEx (int ,int *,int) ;
 int drsuapi_v4_0_s_ifspec ;
 int kprintf (char*) ;

NTSTATUS kull_m_rpc_drsr_stop_server()
{
 RPC_STATUS status;
 RPC_BINDING_VECTOR *vector = ((void*)0);

 status = RpcServerInqBindings(&vector);
 if(status == RPC_S_OK)
 {
  status = RpcEpUnregister(drsuapi_v4_0_s_ifspec, vector, ((void*)0));
  if(status == RPC_S_OK)
   kprintf(L" > RPC bind unregistered\n");
  else PRINT_ERROR(L"RpcEpUnregister: %08x\n", status);
  RpcBindingVectorFree(&vector);
 }
 else PRINT_ERROR(L"RpcServerInqBindings: %08x\n", status);
 status = RpcServerUnregisterIfEx(drsuapi_v4_0_s_ifspec, ((void*)0), 1);
 if(status != RPC_S_OK)
  PRINT_ERROR(L"RpcServerUnregisterIf: %08x\n", status);
 status = RpcMgmtStopServerListening(((void*)0));
 if(status != RPC_S_OK)
  PRINT_ERROR(L"RpcMgmtStopServerListening: %08x\n", status);
 else
 {
  kprintf(L" > stopping RPC server\n");
  RpcMgmtWaitServerListen();
  kprintf(L" > RPC server stopped\n");
 }
 return status;
}
