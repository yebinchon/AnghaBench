
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int UINT ;
typedef int * LPWSTR ;
typedef int HMODULE ;
typedef int DWORD ;


 scalar_t__ FACILITY_WIN32 ;
 int FORMAT_MESSAGE_FROM_HMODULE ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int HRESULT_CODE (int ) ;
 scalar_t__ HRESULT_FACILITY (int ) ;
 scalar_t__ HRESULT_SEVERITY (int ) ;
 scalar_t__ SEVERITY_ERROR ;
 int kernel32_handle ;
 int * load_message (int ,int ,int ) ;

__attribute__((used)) static LPWSTR search_message( DWORD flags, HMODULE module, UINT id, WORD lang )
{
    LPWSTR from = ((void*)0);
    if (flags & FORMAT_MESSAGE_FROM_HMODULE)
        from = load_message( module, id, lang );
    if (!from && (flags & FORMAT_MESSAGE_FROM_SYSTEM))
    {

        if (HRESULT_SEVERITY(id) == SEVERITY_ERROR &&
            HRESULT_FACILITY(id) == FACILITY_WIN32)
        {
            id = HRESULT_CODE(id);
        }
        from = load_message( kernel32_handle, id, lang );
    }
    return from;
}
