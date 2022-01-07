
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* iterate_fields_func ) (int ,int *,void*) ;
typedef int WCHAR ;
typedef int UINT ;
typedef int PCWSTR ;
typedef int INFCONTEXT ;
typedef scalar_t__ HRESULT ;
typedef int HINF ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ E_FAIL ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ S_OK ;
 scalar_t__ SetupFindFirstLineW (int ,int ,int ,int *) ;
 scalar_t__ SetupFindNextMatchLineW (int *,int ,int *) ;
 int SetupGetFieldCount (int *) ;
 int * get_field_string (int *,int,int *,int *,int *) ;

__attribute__((used)) static HRESULT iterate_section_fields(HINF hinf, PCWSTR section, PCWSTR key,
                                      iterate_fields_func callback, void *arg)
{
    WCHAR static_buffer[200];
    WCHAR *buffer = static_buffer;
    DWORD size = ARRAY_SIZE(static_buffer);
    INFCONTEXT context;
    HRESULT hr = E_FAIL;

    BOOL ok = SetupFindFirstLineW(hinf, section, key, &context);
    while (ok)
    {
        UINT i, count = SetupGetFieldCount(&context);

        for (i = 1; i <= count; i++)
        {
            if (!(buffer = get_field_string(&context, i, buffer, static_buffer, &size)))
                goto done;

            if ((hr = callback(hinf, buffer, arg)) != S_OK)
                goto done;
        }

        ok = SetupFindNextMatchLineW(&context, key, &context);
    }

    hr = S_OK;

 done:
    if (buffer != static_buffer) HeapFree(GetProcessHeap(), 0, buffer);
    return hr;
}
