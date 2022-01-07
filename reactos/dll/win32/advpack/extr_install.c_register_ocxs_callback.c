
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PCWSTR ;
typedef int INFCONTEXT ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HMODULE ;
typedef int HINF ;
typedef scalar_t__ BOOL ;


 int ARRAY_SIZE (int *) ;
 scalar_t__ E_FAIL ;
 scalar_t__ FAILED (scalar_t__) ;
 int FreeLibrary (scalar_t__) ;
 int LOAD_WITH_ALTERED_SEARCH_PATH ;
 scalar_t__ LoadLibraryExW (int *,int *,int ) ;
 int MAX_INF_STRING_LENGTH ;
 scalar_t__ S_OK ;
 scalar_t__ SetupFindFirstLineW (int ,int ,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetStringFieldW (int *,int,int *,int ,int *) ;
 int TRUE ;
 scalar_t__ do_ocx_reg (scalar_t__,int ,int *,int *) ;

__attribute__((used)) static HRESULT register_ocxs_callback(HINF hinf, PCWSTR field, const void *arg)
{
    HMODULE hm;
    INFCONTEXT context;
    HRESULT hr = S_OK;

    BOOL ok = SetupFindFirstLineW(hinf, field, ((void*)0), &context);

    for (; ok; ok = SetupFindNextLine(&context, &context))
    {
        WCHAR buffer[MAX_INF_STRING_LENGTH];


        if (!SetupGetStringFieldW(&context, 1, buffer, ARRAY_SIZE(buffer), ((void*)0)))
            continue;

        hm = LoadLibraryExW(buffer, ((void*)0), LOAD_WITH_ALTERED_SEARCH_PATH);
        if (hm)
        {
            if (do_ocx_reg(hm, TRUE, ((void*)0), ((void*)0)) != S_OK)
                hr = E_FAIL;

            FreeLibrary(hm);
        }
        else
            hr = E_FAIL;

        if (FAILED(hr))
        {

            break;
        }
    }

    return hr;
}
