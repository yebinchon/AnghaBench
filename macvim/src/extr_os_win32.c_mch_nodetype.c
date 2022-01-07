
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef int WCHAR ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int *,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ CreateFileW (int *,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ ERROR_CALL_NOT_IMPLEMENTED ;
 int FILE_TYPE_CHAR ;
 int FILE_TYPE_DISK ;
 int GENERIC_WRITE ;
 scalar_t__ GetACP () ;
 int GetFileType (scalar_t__) ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NODE_NORMAL ;
 int NODE_OTHER ;
 int NODE_WRITABLE ;
 int OPEN_EXISTING ;
 scalar_t__ STRNCMP (int *,char*,int) ;
 int enc_codepage ;
 int * enc_to_utf16 (int *,int *) ;
 int vim_free (int *) ;

int
mch_nodetype(char_u *name)
{
    HANDLE hFile;
    int type;







    if (STRNCMP(name, "\\\\.\\", 4) == 0)
 return NODE_WRITABLE;
 hFile = CreateFile(name,
      GENERIC_WRITE,
      0,
      ((void*)0),
      OPEN_EXISTING,
      0,
      ((void*)0));




    if (hFile == INVALID_HANDLE_VALUE)
 return NODE_NORMAL;

    type = GetFileType(hFile);
    CloseHandle(hFile);
    if (type == FILE_TYPE_CHAR)
 return NODE_WRITABLE;
    if (type == FILE_TYPE_DISK)
 return NODE_NORMAL;
    return NODE_OTHER;
}
