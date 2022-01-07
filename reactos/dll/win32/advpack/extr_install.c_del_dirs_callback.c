
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PCWSTR ;
typedef int INFCONTEXT ;
typedef scalar_t__ HRESULT ;
typedef int HINF ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int ADN_DEL_IF_EMPTY ;
 scalar_t__ DelNodeW (int *,int ) ;
 scalar_t__ E_FAIL ;
 int MAX_INF_STRING_LENGTH ;
 scalar_t__ S_OK ;
 scalar_t__ SetupFindFirstLineW (int ,int ,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetLineTextW (int *,int *,int *,int *,int *,int,int *) ;

__attribute__((used)) static HRESULT del_dirs_callback(HINF hinf, PCWSTR field, const void *arg)
{
    INFCONTEXT context;
    HRESULT hr = S_OK;
    DWORD size;

    BOOL ok = SetupFindFirstLineW(hinf, field, ((void*)0), &context);

    for (; ok; ok = SetupFindNextLine(&context, &context))
    {
        WCHAR directory[MAX_INF_STRING_LENGTH];

        if (!SetupGetLineTextW(&context, ((void*)0), ((void*)0), ((void*)0), directory,
                               MAX_INF_STRING_LENGTH, &size))
            continue;

        if (DelNodeW(directory, ADN_DEL_IF_EMPTY) != S_OK)
            hr = E_FAIL;
    }

    return hr;
}
