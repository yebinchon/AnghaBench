
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PWSTR ;
typedef int PVOID ;
typedef int PFIND_EXE_FILE_CALLBACKW ;
typedef int PCWSTR ;
typedef scalar_t__ HANDLE ;


 scalar_t__ CreateFileW (int ,int ,int ,int *,int ,int ,int *) ;
 int memcpy (int ,int ,int) ;
 int strlenW (int ) ;

HANDLE __FindExecutableImageExW(PCWSTR file, PCWSTR path, PWSTR out_buffer, PFIND_EXE_FILE_CALLBACKW x, PVOID y)
{
    HANDLE ret = CreateFileW(file, 0, 0, ((void*)0), 0, 0, ((void*)0));
    if(ret)
        memcpy(out_buffer, file, (strlenW(file) + 1)*sizeof(WCHAR));

    return ret;
}
