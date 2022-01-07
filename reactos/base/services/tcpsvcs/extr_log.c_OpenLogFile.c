
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BOOL ;


 int * CreateFileW (int ,int ,int ,int *,int ,int,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_FLAG_OVERLAPPED ;
 int FILE_SHARE_READ ;
 int GENERIC_WRITE ;
 int * INVALID_HANDLE_VALUE ;
 int OPEN_ALWAYS ;
 int TRUE ;
 int * hLogFile ;
 int szLogFileName ;

__attribute__((used)) static BOOL
OpenLogFile()
{
    hLogFile = CreateFileW(szLogFileName,
                           GENERIC_WRITE,
                           FILE_SHARE_READ,
                           ((void*)0),
                           OPEN_ALWAYS,
                           FILE_ATTRIBUTE_NORMAL | FILE_FLAG_OVERLAPPED,
                           ((void*)0));
    if (hLogFile == INVALID_HANDLE_VALUE)
    {
        hLogFile = ((void*)0);
        return FALSE;
    }

    return TRUE;
}
