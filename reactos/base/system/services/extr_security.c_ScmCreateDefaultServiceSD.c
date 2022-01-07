
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PSECURITY_DESCRIPTOR ;
typedef scalar_t__ NTSTATUS ;
typedef scalar_t__ DWORD ;


 int DPRINT (char*,scalar_t__) ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int HEAP_ZERO_MEMORY ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ RtlAbsoluteToSelfRelativeSD (int ,int *,scalar_t__*) ;
 int * RtlAllocateHeap (int ,int ,scalar_t__) ;
 int RtlFreeHeap (int ,int ,int *) ;
 int RtlGetProcessHeap () ;
 scalar_t__ RtlNtStatusToDosError (scalar_t__) ;
 scalar_t__ STATUS_BUFFER_TOO_SMALL ;
 int pDefaultSD ;

DWORD
ScmCreateDefaultServiceSD(
    PSECURITY_DESCRIPTOR *ppSecurityDescriptor)
{
    PSECURITY_DESCRIPTOR pRelativeSD = ((void*)0);
    DWORD dwBufferLength = 0;
    NTSTATUS Status;
    DWORD dwError = ERROR_SUCCESS;


    Status = RtlAbsoluteToSelfRelativeSD(pDefaultSD,
                                         ((void*)0),
                                         &dwBufferLength);
    if (Status != STATUS_BUFFER_TOO_SMALL)
    {
        dwError = RtlNtStatusToDosError(Status);
        goto done;
    }

    DPRINT("BufferLength %lu\n", dwBufferLength);

    pRelativeSD = RtlAllocateHeap(RtlGetProcessHeap(),
                                  HEAP_ZERO_MEMORY,
                                  dwBufferLength);
    if (pRelativeSD == ((void*)0))
    {
        dwError = ERROR_OUTOFMEMORY;
        goto done;
    }
    DPRINT("pRelativeSD %p\n", pRelativeSD);

    Status = RtlAbsoluteToSelfRelativeSD(pDefaultSD,
                                         pRelativeSD,
                                         &dwBufferLength);
    if (!NT_SUCCESS(Status))
    {
        dwError = RtlNtStatusToDosError(Status);
        goto done;
    }

    *ppSecurityDescriptor = pRelativeSD;

done:
    if (dwError != ERROR_SUCCESS)
    {
        if (pRelativeSD != ((void*)0))
            RtlFreeHeap(RtlGetProcessHeap(), 0, pRelativeSD);
    }

    return dwError;
}
