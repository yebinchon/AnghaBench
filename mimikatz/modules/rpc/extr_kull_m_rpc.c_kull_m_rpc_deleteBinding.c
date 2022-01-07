
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * RPC_BINDING_HANDLE ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ RPC_S_OK ;
 scalar_t__ RpcBindingFree (int **) ;

BOOL kull_m_rpc_deleteBinding(RPC_BINDING_HANDLE *hBinding)
{
 BOOL status = FALSE;
 if(status = (RpcBindingFree(hBinding) == RPC_S_OK))
  *hBinding = ((void*)0);
 return status;
}
