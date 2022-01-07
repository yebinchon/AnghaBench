
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const WCHAR ;
typedef int INFCONTEXT ;
typedef int DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int GetProcessHeap () ;
 int const* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int const*) ;
 scalar_t__ SetupGetStringFieldW (int *,int,int const*,int,int*) ;

__attribute__((used)) static WCHAR *get_field_string(INFCONTEXT *context, DWORD index, WCHAR *buffer,
                               const WCHAR *static_buffer, DWORD *size)
{
    DWORD required;

    if (SetupGetStringFieldW(context, index, buffer, *size, &required)) return buffer;

    if (GetLastError() == ERROR_INSUFFICIENT_BUFFER)
    {

        if (buffer != static_buffer) HeapFree(GetProcessHeap(), 0, buffer);
        if (!(buffer = HeapAlloc(GetProcessHeap(), 0, required*sizeof(WCHAR)))) return ((void*)0);
        *size = required;
        if (SetupGetStringFieldW(context, index, buffer, *size, &required)) return buffer;
    }

    if (buffer != static_buffer) HeapFree(GetProcessHeap(), 0, buffer);
    return ((void*)0);
}
