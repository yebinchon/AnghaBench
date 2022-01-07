
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPTSTR ;
typedef char* LPSTR ;
typedef scalar_t__ INT ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef char CHAR ;
typedef int BOOL ;


 int FALSE ;
 int FILE_CURRENT ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,scalar_t__) ;
 int OutputCodePage ;
 scalar_t__ ReadFile (int ,char*,scalar_t__,scalar_t__*,int *) ;
 int SetFilePointer (int ,scalar_t__,int *,int ) ;
 int TRUE ;
 char* cmd_alloc (scalar_t__) ;
 int cmd_free (char*) ;
 char* memchr (char*,char,scalar_t__) ;

BOOL FileGetString (HANDLE hFile, LPTSTR lpBuffer, INT nBufferLength)
{
    LPSTR lpString;
    DWORD dwRead;
    INT len = 0;



    lpString = lpBuffer;


    if (ReadFile(hFile, lpString, nBufferLength - 1, &dwRead, ((void*)0)))
    {

        CHAR *end = memchr(lpString, '\n', dwRead);
        len = dwRead;
        if (end)
        {
            len = (INT)(end - lpString) + 1;
            SetFilePointer(hFile, len - dwRead, ((void*)0), FILE_CURRENT);
        }
    }

    if (!len)
    {



        return FALSE;
    }

    lpString[len++] = '\0';




    return TRUE;
}
