
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_2__ {int working_dir; } ;
typedef int PCWSTR ;
typedef int INFCONTEXT ;
typedef scalar_t__ HRESULT ;
typedef int HINF ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;
typedef TYPE_1__ ADVInfo ;


 scalar_t__ E_FAIL ;
 int MAX_INF_STRING_LENGTH ;
 scalar_t__ S_OK ;
 scalar_t__ SetupFindFirstLineW (int ,int ,int *,int *) ;
 scalar_t__ SetupFindNextLine (int *,int *) ;
 int SetupGetLineTextW (int *,int *,int *,int *,int *,int,int *) ;
 scalar_t__ launch_exe (int *,int ,int *) ;

__attribute__((used)) static HRESULT run_setup_commands_callback(HINF hinf, PCWSTR field, const void *arg)
{
    const ADVInfo *info = (const ADVInfo *)arg;
    INFCONTEXT context;
    HRESULT hr = S_OK;
    DWORD size;

    BOOL ok = SetupFindFirstLineW(hinf, field, ((void*)0), &context);

    for (; ok; ok = SetupFindNextLine(&context, &context))
    {
        WCHAR buffer[MAX_INF_STRING_LENGTH];

        if (!SetupGetLineTextW(&context, ((void*)0), ((void*)0), ((void*)0), buffer,
                               MAX_INF_STRING_LENGTH, &size))
            continue;

        if (launch_exe(buffer, info->working_dir, ((void*)0)) != S_OK)
            hr = E_FAIL;
    }

    return hr;
}
