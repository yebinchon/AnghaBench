
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PCHAR ;
typedef int* PBYTE ;
typedef scalar_t__ LPCVOID ;
typedef int LPBYTE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (scalar_t__) ;
 int RtlCopyMemory (int ,scalar_t__,int) ;
 int sprintf_s (scalar_t__,int,char*,int) ;

BOOL dataToHexWithoutNull(LPCVOID data, DWORD dwData, LPBYTE dest, DWORD dwDest)
{
 BOOL status = FALSE;
 PCHAR buffer;
 DWORD dwBuffer = dwData * 2 + 1, i;
 if(dwDest >= (dwData * 2))
 {
  if(buffer = (PCHAR) LocalAlloc(LPTR, dwBuffer))
  {
   for(i = 0; i < dwData; i++)
    if(sprintf_s(buffer + i * 2, dwBuffer - i * 2, "%02x", ((PBYTE) data)[i]) < 2)
     break;
   if(status = (i == dwData))
    RtlCopyMemory(dest, buffer, dwBuffer - 1);
   LocalFree(buffer);
  }
 }
 return status;
}
