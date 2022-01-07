
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCVOID ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FlushFileBuffers (int ) ;
 int PRINT_ERROR_AUTO (char*) ;
 scalar_t__ WriteFile (int ,int ,scalar_t__,scalar_t__*,int *) ;

BOOL kull_m_pipe_write(HANDLE hPipe, LPCVOID buffer, DWORD size)
{
 BOOL status = FALSE;
 DWORD nbWritten;
 if(WriteFile(hPipe, buffer, size, &nbWritten, ((void*)0)) && (size == nbWritten))
 {
  if(!(status = FlushFileBuffers(hPipe)))
   PRINT_ERROR_AUTO(L"FlushFileBuffers");
 }
 else PRINT_ERROR_AUTO(L"WriteFile");
 return status;
}
