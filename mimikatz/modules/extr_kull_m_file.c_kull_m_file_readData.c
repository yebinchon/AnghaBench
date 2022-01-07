
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ LowPart; int HighPart; } ;
typedef scalar_t__* PDWORD ;
typedef int PCWCHAR ;
typedef scalar_t__ PBYTE ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 int FALSE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 scalar_t__ GetFileSizeEx (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,scalar_t__) ;
 int LocalFree (scalar_t__) ;
 int OPEN_EXISTING ;
 int PRINT_ERROR_AUTO (char*) ;
 scalar_t__ ReadFile (scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int *) ;
 scalar_t__ isBase64InterceptInput ;
 int kull_m_string_quick_base64_to_Binary (int ,scalar_t__*,scalar_t__*) ;

BOOL kull_m_file_readData(PCWCHAR fileName, PBYTE * data, PDWORD lenght)
{
 BOOL reussite = FALSE;
 DWORD dwBytesReaded;
 LARGE_INTEGER filesize;
 HANDLE hFile = ((void*)0);

 if(isBase64InterceptInput)
 {
  if(!(reussite = kull_m_string_quick_base64_to_Binary(fileName, data, lenght)))
   PRINT_ERROR_AUTO(L"kull_m_string_quick_base64_to_Binary");
 }
 else if((hFile = CreateFile(fileName, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0))) && hFile != INVALID_HANDLE_VALUE)
 {
  if(GetFileSizeEx(hFile, &filesize) && !filesize.HighPart)
  {
   *lenght = filesize.LowPart;
   if(*data = (PBYTE) LocalAlloc(LPTR, *lenght))
   {
    if(!(reussite = ReadFile(hFile, *data, *lenght, &dwBytesReaded, ((void*)0)) && (*lenght == dwBytesReaded)))
     LocalFree(*data);
   }
  }
  CloseHandle(hFile);
 }
 return reussite;
}
