
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* PHANDLE ;
typedef int LPCWCHAR ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ CreateFile (int ,int,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NMPWAIT_USE_DEFAULT_WAIT ;
 int OPEN_EXISTING ;
 int PIPE_READMODE_MESSAGE ;
 int PIPE_WAIT ;
 int PRINT_ERROR_AUTO (char*) ;
 int SetNamedPipeHandleState (scalar_t__,int*,int *,int *) ;
 scalar_t__ WaitNamedPipe (int ,int ) ;

BOOL kull_m_pipe_client(LPCWCHAR pipeName, PHANDLE phPipe)
{
 BOOL status = FALSE;
 DWORD dwMode = PIPE_READMODE_MESSAGE | PIPE_WAIT;
 if(WaitNamedPipe(pipeName, NMPWAIT_USE_DEFAULT_WAIT))
 {
  *phPipe = CreateFile(pipeName, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
  if(*phPipe && (*phPipe != INVALID_HANDLE_VALUE))
  {
   if(!(status = SetNamedPipeHandleState(*phPipe, &dwMode, ((void*)0), ((void*)0))))
    PRINT_ERROR_AUTO(L"SetNamedPipeHandleState");
  }
  else PRINT_ERROR_AUTO(L"CreateFile");
 }
 else PRINT_ERROR_AUTO(L"WaitNamedPipe");
 return status;
}
