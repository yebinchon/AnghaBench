
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module ;
typedef int WCHAR ;
typedef int HMODULE ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CloseHandle (int ) ;
 int EnumProcessModules (int ,int *,int,int *) ;
 int FALSE ;
 int GetModuleBaseNameW (int ,int ,int *,int ) ;
 int OpenProcess (int,int ,int ) ;
 int PROCESS_QUERY_INFORMATION ;
 int PROCESS_VM_READ ;
 int TRUE ;

__attribute__((used)) static BOOL get_process_name_from_pid(DWORD pid, WCHAR *buf, DWORD chars)
{
    HANDLE process;
    HMODULE module;
    DWORD required_size;

    process = OpenProcess(PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, FALSE, pid);
    if (!process)
        return FALSE;

    if (!EnumProcessModules(process, &module, sizeof(module), &required_size))
    {
        CloseHandle(process);
        return FALSE;
    }

    if (!GetModuleBaseNameW(process, module, buf, chars))
    {
        CloseHandle(process);
        return FALSE;
    }

    CloseHandle(process);
    return TRUE;
}
