
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int* RPC_WSTR ;
typedef scalar_t__ RPC_STATUS ;
typedef int* PBYTE ;
typedef int* LPWSTR ;
typedef int* LPCWSTR ;
typedef int LPCGUID ;
typedef int DWORD ;


 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int PRINT_ERROR (char*,scalar_t__) ;
 scalar_t__ RPC_S_OK ;
 int RpcStringFree (int**) ;
 int RtlCopyMemory (int*,int*,int) ;
 scalar_t__ UuidToString (int ,int**) ;
 int lstrlen (int*) ;

LPWSTR kull_m_rpc_drsr_MakeSpnWithGUID(LPCGUID ServClass, LPCWSTR ServName, LPCGUID InstName)
{
 LPWSTR result = ((void*)0);
 RPC_STATUS status;
 RPC_WSTR szServClass, szInstName;
 DWORD dwServClass, dwInstName, dwServName;
 status = UuidToString(ServClass, &szServClass);
 if(status == RPC_S_OK)
 {
  status = UuidToString(InstName, &szInstName);
  if(status == RPC_S_OK)
  {
   dwServClass = lstrlen((LPWSTR) szServClass) * sizeof(wchar_t);
   dwInstName = lstrlen((LPWSTR) szInstName) * sizeof(wchar_t);
   dwServName = lstrlen(ServName) * sizeof(wchar_t);
   if (result = (LPWSTR) LocalAlloc(LPTR, dwServClass + sizeof(wchar_t) + dwInstName + sizeof(wchar_t) + dwServName))
   {
    RtlCopyMemory(result, szServClass, dwServClass);
    RtlCopyMemory((PBYTE) result + dwServClass + sizeof(wchar_t), szInstName, dwInstName);
    ((PBYTE) result)[dwServClass] = L'/';
    RtlCopyMemory((PBYTE) result + dwServClass + sizeof(wchar_t) + dwServName + sizeof(wchar_t), ServName, dwServName);
    ((PBYTE) result)[dwServClass + sizeof(wchar_t) + dwServName] = L'/';
   }
   RpcStringFree(&szInstName);
  }
  else PRINT_ERROR(L"UuidToString(i): %08x\n", status);
  RpcStringFree(&szServClass);
 }
 else PRINT_ERROR(L"UuidToString(s): %08x\n", status);
 return result;
}
