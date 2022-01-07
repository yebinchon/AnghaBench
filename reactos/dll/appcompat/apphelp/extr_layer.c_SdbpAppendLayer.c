
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef scalar_t__* PWSTR ;
typedef int PCWSTR ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ NT_SUCCESS (int ) ;
 int SPACE_ONLY ;
 int STATUS_SUCCESS ;
 int StringCbCatNW (scalar_t__*,int ,int,int) ;
 int StringCbCatW (scalar_t__*,int ,int) ;

BOOL SdbpAppendLayer(PWSTR target, DWORD len, PCWSTR layer, PCWSTR end)
{
    NTSTATUS Status = STATUS_SUCCESS;
    if (target[0])
        Status = StringCbCatW(target, len, SPACE_ONLY);

    if (NT_SUCCESS(Status))
    {
        if (end)
            Status = StringCbCatNW(target, len, layer, (end - layer) * sizeof(WCHAR));
        else
            Status = StringCbCatW(target, len, layer);
    }

    return NT_SUCCESS(Status);
}
