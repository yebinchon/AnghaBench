
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;
typedef int BOOL ;


 scalar_t__ ConnectNamedPipe (int ,int *) ;
 scalar_t__ ERROR_PIPE_CONNECTED ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int PRINT_ERROR_AUTO (char*) ;

BOOL kull_m_pipe_server_connect(HANDLE hPipe)
{
 BOOL status = FALSE;
 if(!(status = (ConnectNamedPipe(hPipe, ((void*)0)) || (GetLastError() == ERROR_PIPE_CONNECTED))))
  PRINT_ERROR_AUTO(L"ConnectNamedPipe");
 return status;
}
