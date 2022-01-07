
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWCHAR ;
typedef scalar_t__ HANDLE ;
typedef int BOOL ;


 scalar_t__ CreateNamedPipe (int ,int ,int,int,int ,int ,int ,int *) ;
 int FALSE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NMPWAIT_USE_DEFAULT_WAIT ;
 int PIPE_ACCESS_DUPLEX ;
 int PIPE_READMODE_MESSAGE ;
 int PIPE_TYPE_MESSAGE ;
 int PIPE_WAIT ;
 int PRINT_ERROR_AUTO (char*) ;

BOOL kull_m_pipe_server(LPCWCHAR pipeName, HANDLE *phPipe)
{
 BOOL status = FALSE;
 *phPipe = CreateNamedPipe(pipeName, PIPE_ACCESS_DUPLEX, PIPE_TYPE_MESSAGE | PIPE_READMODE_MESSAGE | PIPE_WAIT, 1, 0, 0, NMPWAIT_USE_DEFAULT_WAIT, ((void*)0));
 if(!(status = (*phPipe && (*phPipe != INVALID_HANDLE_VALUE))))
  PRINT_ERROR_AUTO(L"CreateNamedPipe");
 return status;
}
