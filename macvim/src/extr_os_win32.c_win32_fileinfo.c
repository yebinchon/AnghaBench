
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;
typedef scalar_t__ HANDLE ;
typedef int BY_HANDLE_FILE_INFORMATION ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int *,int ,int,int *,int ,int ,int *) ;
 scalar_t__ CreateFileW (int *,int ,int,int *,int ,int ,int *) ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int FILEINFO_ENC_FAIL ;
 int FILEINFO_INFO_FAIL ;
 int FILEINFO_OK ;
 int FILEINFO_READ_FAIL ;
 int FILE_FLAG_BACKUP_SEMANTICS ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 scalar_t__ GetACP () ;
 scalar_t__ GetFileInformationByHandle (scalar_t__,int *) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 int vim_free (int *) ;

int
win32_fileinfo(char_u *fname, BY_HANDLE_FILE_INFORMATION *info)
{
    HANDLE hFile;
    int res = FILEINFO_READ_FAIL;
 hFile = CreateFile(fname,
      GENERIC_READ,
      FILE_SHARE_READ | FILE_SHARE_WRITE,
      ((void*)0),
      OPEN_EXISTING,
      FILE_FLAG_BACKUP_SEMANTICS,
      ((void*)0));

    if (hFile != INVALID_HANDLE_VALUE)
    {
 if (GetFileInformationByHandle(hFile, info) != 0)
     res = FILEINFO_OK;
 else
     res = FILEINFO_INFO_FAIL;
 CloseHandle(hFile);
    }




    return res;
}
