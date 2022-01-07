
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPBYTE ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ ERROR_MORE_DATA ;
 int FALSE ;
 scalar_t__ GetLastError () ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ LocalFree (int *) ;
 int PRINT_ERROR_AUTO (char*) ;
 int ReadFile (int ,int *,int,int*,int *) ;
 int RtlCopyMemory (int *,int *,int) ;

BOOL kull_m_pipe_read(HANDLE hPipe, LPBYTE *buffer, DWORD *size)
{
 BOOL status = FALSE;
 DWORD szReaded, szBuffer = 0;
 BYTE * tmpBuffer = ((void*)0); DWORD szTmpBuffer = 0;

 *size = 0;
 *buffer = ((void*)0);
 do
 {
  if(*buffer)
  {
   tmpBuffer = *buffer;
   szTmpBuffer = szBuffer;
  }

  szBuffer += 2048;
  if(*buffer = (BYTE *) LocalAlloc(LPTR, szBuffer))
  {
   if(tmpBuffer)
   {
    RtlCopyMemory(*buffer, tmpBuffer, szTmpBuffer);
    tmpBuffer = (BYTE *) LocalFree(tmpBuffer);
   }

   if(status = ReadFile(hPipe, *buffer + szTmpBuffer, 2048, &szReaded, ((void*)0)))
   {
    *size = szTmpBuffer + szReaded;
    break;
   }
  }
 } while(GetLastError() == ERROR_MORE_DATA);

 if(!status)
 {
  PRINT_ERROR_AUTO(L"ReadFile");
  *buffer = (BYTE *) LocalFree(*buffer);
  *size = 0;
 }
 return status;
}
