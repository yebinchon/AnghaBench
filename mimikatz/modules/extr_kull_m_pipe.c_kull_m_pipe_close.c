
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* PHANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 int DisconnectNamedPipe (scalar_t__) ;
 scalar_t__ ERROR_PIPE_NOT_CONNECTED ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetNamedPipeInfo (scalar_t__,int*,int *,int *,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int PIPE_SERVER_END ;
 int PRINT_ERROR_AUTO (char*) ;

BOOL kull_m_pipe_close(PHANDLE phPipe)
{
 BOOL status = FALSE;
 DWORD flags = 0;
 if(*phPipe && (*phPipe != INVALID_HANDLE_VALUE))
 {
  if(GetNamedPipeInfo(*phPipe, &flags, ((void*)0), ((void*)0), ((void*)0)) || (GetLastError() == ERROR_PIPE_NOT_CONNECTED))
  {
   if(flags & PIPE_SERVER_END)
   {
    if(!DisconnectNamedPipe(*phPipe))
     PRINT_ERROR_AUTO(L"DisconnectNamedPipe");
   }
   if(status = CloseHandle(*phPipe))
    *phPipe = INVALID_HANDLE_VALUE;
   else PRINT_ERROR_AUTO(L"CloseHandle");
  }
  else PRINT_ERROR_AUTO(L"GetNamedPipeInfo");
 }
 return status;
}
