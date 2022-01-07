
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSECURITY_ATTRIBUTES ;
typedef int LPCWSTR ;
typedef int HANDLE ;
typedef int DWORD ;


 int CP_ACP ;
 int CreateFileA (char*,int ,int ,int ,int ,int ,int ) ;
 int MAX_PATH ;
 int WideCharToMultiByte (int ,int ,int ,int,char*,int,int *,int *) ;

HANDLE __CreateFileW(
    LPCWSTR lpFileName,
    DWORD dwDesiredAccess,
    DWORD dwShareMode,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    DWORD dwCreationDisposition,
    DWORD dwFlagsAndAttributes,
    HANDLE hTemplateFile)
{
    char buf[MAX_PATH];
    HANDLE res;

    WideCharToMultiByte(CP_ACP, 0, lpFileName, -1, buf, MAX_PATH, ((void*)0), ((void*)0));
    res = CreateFileA(buf, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
    return res;
}
