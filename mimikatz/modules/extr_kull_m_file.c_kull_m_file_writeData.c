
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int PCWCHAR ;
typedef int * LPWSTR ;
typedef scalar_t__ LPCVOID ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CREATE_ALWAYS ;
 int CRYPT_STRING_BASE64 ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int ,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ CryptBinaryToString (int const*,int,int ,int *,int*) ;
 scalar_t__ FALSE ;
 scalar_t__ FlushFileBuffers (scalar_t__) ;
 int GENERIC_WRITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 int LocalFree (int *) ;
 scalar_t__ WriteFile (scalar_t__,scalar_t__,int,int*,int *) ;
 scalar_t__ isBase64InterceptOutput ;
 int kprintf (char*,...) ;

BOOL kull_m_file_writeData(PCWCHAR fileName, LPCVOID data, DWORD lenght)
{
 BOOL reussite = FALSE;
 DWORD dwBytesWritten = 0, i;
 HANDLE hFile = ((void*)0);
 LPWSTR base64;

 if(isBase64InterceptOutput)
 {
  if(CryptBinaryToString((const BYTE *) data, lenght, CRYPT_STRING_BASE64, ((void*)0), &dwBytesWritten))
  {
   if(base64 = (LPWSTR) LocalAlloc(LPTR, dwBytesWritten * sizeof(wchar_t)))
   {
    if(reussite = CryptBinaryToString((const BYTE *) data, lenght, CRYPT_STRING_BASE64, base64, &dwBytesWritten))
    {
     kprintf(L"\n====================\nBase64 of file : %s\n====================\n", fileName);
     for(i = 0; i < dwBytesWritten; i++)
      kprintf(L"%c", base64[i]);
     kprintf(L"====================\n");
    }
    LocalFree(base64);
   }
  }
 }
 else if((hFile = CreateFile(fileName, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0))) && hFile != INVALID_HANDLE_VALUE)
 {
  if(WriteFile(hFile, data, lenght, &dwBytesWritten, ((void*)0)) && (lenght == dwBytesWritten))
   reussite = FlushFileBuffers(hFile);
  CloseHandle(hFile);
 }
 return reussite;
}
